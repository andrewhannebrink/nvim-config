return {
  'dinhhuy258/git.nvim',
  config = function()
    require('git').setup {
      keymaps = {
        blame = "<Leader>gb", -- Open git blame
        browse = "<Leader>go" -- Open file/folder in git repo 
      }
    }
  end
}
