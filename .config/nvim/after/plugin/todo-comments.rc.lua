local status, todo_comments = pcall(require, "todo-comments")
if (not status) then return end

todo_comments.setup()

vim.keymap.set('n', '<Leader>t', ':TodoTelescope theme=ivy<CR>')
