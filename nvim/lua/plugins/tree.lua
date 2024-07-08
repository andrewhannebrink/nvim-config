-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {}
  end,
}

---- OR setup with some options
--require("nvim-tree").setup({
  --sort_by = "case_sensitive",
  --view = {
    --adaptive_size = true,
    --mappings = {
      --list = {
        --{ key = "u", action = "dir_up" },
      --},
    --},
 --},
  --renderer = {
   --group_empty = true,
  --},
--})
