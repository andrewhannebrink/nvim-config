return {  
  "neovim/nvim-lspconfig", 
  config = function()
    local lspconfig = require'lspconfig'
    lspconfig.svelte.setup{} 
    lspconfig.tsserver.setup{}
    lspconfig.tailwindcss.setup{}
    lspconfig.prismals.setup{}
    lspconfig.gopls.setup{}
    lspconfig.graphql.setup{}
    lspconfig.lua_ls.setup{}
    lspconfig.pylsp.setup{
      settings = {
        pylsp = {
          plugins = {
            pycodestyle = {
              enabled = false,
              --ignore = {'E501'}
              --maxLineLength = 100
            }
          }
        }
      }
    }
  end
}
