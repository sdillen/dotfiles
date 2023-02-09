-- Remove trailing white spaces in general
vim.api.nvim_create_autocmd(
    { 'BufWritePre' },
    {
        pattern = { '*' },
        command = '%s/\\s\\+$//e'
    }
)

-- Set filetype to yaml.ansible if the pattern matches
vim.api.nvim_create_autocmd(
    { "BufRead", "BufNewFile" },
    {
        pattern = { "*/roles/*.yaml", "*/ansible-roles/*.yaml" },
        command = "set filetype=yaml.ansible"
    }
)
