return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { "c", "c_sharp", "lua", "vim", "vimdoc", "query" },
            sync_install = false,
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
            query_linter = {
                enable = true,
                use_virtual_text = true,
                lint_events = { 'BufWrite', 'CursorHold' },
            },
            textobjects = {
                select = {
                    enable = true,
                    lookahead = true,
                    keymaps = {
                        -- You can use the capture groups defined in textobjects.scm
                        ['af'] = '@function.outer',
                        ['if'] = '@function.inner',
                        ['ac'] = '@class.outer',
                        ['ic'] = '@class.inner',
                    },
                },
            },
        })
    end
}
