return { 
  "williamboman/mason-lspconfig.nvim",
  config = function()
    require"mason".setup()
    require"mason-lspconfig".setup{
      ensure_installed = { 'tailwindcss', 'prismals', 'pylsp', 'graphql'  }
    }
  end
}
