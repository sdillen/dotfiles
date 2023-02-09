local status, telescope = pcall(require, "telescope")
if (not status) then return end

local actions = require("telescope.actions")
local builtin = require("telescope.builtin")

vim.keymap.set('n', '<Leader>f', builtin.find_files, {})
vim.keymap.set('n', '<Leader>r', builtin.live_grep, {})
vim.keymap.set('n', '<Leader>;', builtin.buffers, {})
vim.keymap.set('n', '<Leader>g', builtin.git_files, {})
vim.keymap.set('n', '<Leader>sp', builtin.spell_suggest, {})

telescope.setup({
    defaults = {
        mappings = {
            i = {
                ["<C-o>"] = actions.select_tab,
            },
            n = {
                ["q"] = actions.close,
                ["<C-o>"] = actions.select_tab,
            }
        }
    },
    pickers = {
        find_files = {
            theme = "dropdown"
        },
        live_grep = {
            theme = "dropdown"
        },
        buffers = {
            theme = "ivy"
        },
        git_files = {
            theme = "dropdown"
        },
        spell_suggest = {
            theme = "cursor"
        },
        todo = {
            theme = "ivy"
        }
    }
})
