local status, git = pcall(require, 'git')
if (not status) then return end
git.setup {
  keymaps = {
    blame = "<Leader>gb", -- Open git blame
    browse = "<Leader>go" -- Open file/folder in git repo 
  }
}
