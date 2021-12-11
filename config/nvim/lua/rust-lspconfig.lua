local nvim_lsp = require'lspconfig'

local opts = {
    tools = {
        inlay_hints = {
            show_parameter_hints = false,
            parameter_hints_prefix = "",
            others_hints_prefix = " ",
        },
    },

    server = {
        settings = {
            ["rust-analyzer"] = {
                checkOnSave = {
                    command = "clippy"
                },
            }
        }
    },
}

require('rust-tools').setup(opts)
