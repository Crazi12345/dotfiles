return {
    { "tpope/vim-dadbod", lazy = false }, -- Disable lazy loading for immediate access
    {
        "kristijanhusak/vim-dadbod-ui",
        dependencies = {
            "tpope/vim-dadbod",
            "kristijanhusak/vim-dadbod-completion"
        },
        cmd = { "DBUI", "DBUIToggle", "DBUIAddConnection", "DBUIFindBuffer" },
        -- Ensure that the setup function runs after the plugin is loaded
        config = function()
            vim.g.db_ui_use_nerd_fonts = 1  -- Your DBUI configuration
            vim.g.dbs = {
                dev = "postgresql://postgres:cde38ik,@localhost:5432/cdr_full?adapter=~/.local/share/nvim/lazy/vim-dadbod/autoload/db/adapter/postgresql.vim"
            }
        end,
    },
}

