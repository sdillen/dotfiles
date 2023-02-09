if !exists('g:lspconfig')
    finish
endif

lua << EOF
local nvim_lsp = require('lspconfig')
local protocol = require('vim.lsp.protocol')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    --Enable completion triggered by <c-x><c-o>
    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    local opts = { noremap=true, silent=true }

    -- See `:help vim.lsp.*` for documentation on any of the below functions
    buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
    buf_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
    buf_set_keymap('n', '<C-j>', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
    buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
    buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

    -- formatting
    if client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_create_autocmd("BufWritePre", {
            group = vim.api.nvim_create_augroup("Format", { clear = true }),
            buffer = bufnr,
            callback = function() vim.lsp.buf.formatting_seq_sync() end
        })
    end

    -- Formatting.
    -- if client.resolved_capabilities.document_formatting then
    --     vim.api.nvim_command [[augroup Format]]
    --     vim.api.nvim_command [[autocmd! * <buffer>]]
    --     vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
    --     vim.api.nvim_command [[augroup END]]
    -- end

    -- require'completion'.on_attach(client, bufnr)
end

nvim_lsp.ansiblels.setup {
    on_attach = on_attach,
    filetypes = { 'yaml.ansible' },
    settings = {
        ansible = {
            ansible = {
              path = "ansible"
            },
            ansibleLint = {
              enabled = true,
              path = "ansible-lint"
            },
            executionEnvironment = {
              enabled = false
            },
            python = {
              interpreterPath = "python3"
            }
        }
    }
}

nvim_lsp.diagnosticls.setup {
  on_attach = on_attach,
  filetypes = { 'vue','javascript', 'json', 'css', 'less', 'scss'},
  init_options = {
    linters = {
      eslint = {
        command = 'eslint',
        rootPatterns = { '.git' },
        debounce = 100,
        args = { '--stdin', '--stdin-filename', '%filepath', '--format', 'json' },
        sourceName = 'eslint',
        parseJson = {
          errorsRoot = '[0].messages',
          line = 'line',
          column = 'column',
          endLine = 'endLine',
          endColumn = 'endColumn',
          message = '[eslint] ${message} [${ruleId}]',
          security = 'severity'
        },
        securities = {
          [2] = 'error',
          [1] = 'warning'
        }
      },
    },
    filetypes = {
      javascript = 'eslint',
    },
    formatters = {
      eslint = {
        command = 'eslint',
        args = { '--stdin', '--stdin-filename', '%filename', '--fix-to-stdout' },
        rootPatterns = { '.git' },
      },
      prettier = {
        command = 'prettier',
        args = { '--stdin-filepath', '%filename' }
      }
    },
    formatFiletypes = {
      css = 'prettier',
      javascript = 'eslint',
      vue = 'prettier',
      json = 'prettier',
      scss = 'prettier',
      less = 'prettier',
      markdown = 'prettier',
      pug = 'prettier',
    }
  },
  capabilities = capabilites,
}

nvim_lsp.html.setup {
    on_attach = on_attach,
    init_options = {
        configurationSection = { "html", "css", "javascript", "vue" },
        embeddedLanguages = {
            css = true,
            javascript = true,
            vue = true
        }
    },
    capabilities = capabilites,
}

nvim_lsp.jdtls.setup {
    on_attach = on_attach,
    cmd = {'jdtls'},
}

nvim_lsp.gopls.setup {
    on_attach = on_attach,
    cmd = {"gopls", "serve"},
    settings = {
      gopls = {
        analyses = {
          unusedparams = true,
        },
        staticcheck = true,
      },
    },
    capabilities = capabilites,
}

nvim_lsp.powershell_es.setup {
  bundle_path = '/Users/dillenbu/Workspace/powershell/PowerShellEditorServices',
  shell = '/Users/dillenbu/Workspace/powershell/7.2.2/pwsh',
}

nvim_lsp.vuels.setup {
    on_attach = on_attach,
    filetypes = {"vue"},
    cmd = { "vls" },
    vetur = {
        useWorkspaceDependencies = false,
        validation = {
            template = true,
            script = true,
            style = true,
        },
        format = {
            enable = true,
            defaultFormatter = {
                js = 'prettier',
                ts = 'prettier',
                css = 'prettier',
                pug = 'prettier',
            },
            scriptInitialIndent = true,
            styleInitialIndent = true,
        }
    }
}

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { "clangd", "cssls", "dockerls", "jsonls", "marksman", "pylsp", "tailwindcss", "yamlls" }
for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
        on_attach = on_attach,
        flags = {
            debounce_text_changes = 150,
        },
        capabilities = capabilites,
    }
end
EOF
