local rt = require("rust-tools")
local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then return end

local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
  -- formatting
  --  if client.server_capabilities.documentFormattingProvider then
  --    vim.api.nvim_command [[augroup Format]]
  --    vim.api.nvim_command [[autocmd! * <buffer>]]
  --    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
  --    vim.api.nvim_command [[augroup END]]
  --  end
end

nvim_lsp.ocamllsp.setup({})

nvim_lsp.svelte.setup{}

nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascript" },
  cmd = { "typescript-language-server", "--stdio" }
}

nvim_lsp.lua_ls.setup {
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        --get lang server to recognize the vim global
        globals = { 'vim' }
      },
      workspace = {
        --Make the server aware of neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false
      }
    }
  }
}

nvim_lsp.pylsp.setup {
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          select = { 'E9' },
          ignore = true,
        }
      }
    }
  }
}

--nvim_lsp.rust_analyzer.setup({
--    on_attach=on_attach,
--    settings = {
--        ["rust-analyzer"] = {
--            imports = {
--                granularity = {
--                    group = "module",
--                },
--                prefix = "self",
--            },
--            cargo = {
--                buildScripts = {
--                    enable = true,
--                },
--            },
--            procMacro = {
--                enable = true
--            },
--        }
--    }
--})

  rt.setup({
    tools = {
      inlay_hints = {
        -- Only show inlay hints for the current line
        only_current_line = true,
      }
    },
    server = {
      on_attach = function(_, bufnr)
        -- Hover actions
        vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
        -- Code action groups
        vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
      end,
    },
  })

