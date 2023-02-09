if !exists('g:loaded_telescope') | finish | endif

nnoremap <silent> <leader>f <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <silent> <leader>r <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <silent> <leader>; <cmd>Telescope buffers<cr>
nnoremap <silent> \\ <cmd>Telescope help_tags<cr>

lua << EOF
function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup{
  defaults = {
    mappings = {
      i = {
        ["<C-o>"] = actions.select_tab,
      },
      n = {
        ["q"] = actions.close,
        ["<C-o>"] = actions.select_tab,
      },
    },
  }
}
EOF
