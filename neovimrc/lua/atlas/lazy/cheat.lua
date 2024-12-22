return {
    'siawkz/nvim-cheatsh',
    dependencies = {
        "ibhagwan/fzf-lua",
    },
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    },
    config = function(_, opts)
        require('nvim-cheatsh').setup(opts)
        vim.api.nvim_set_keymap('n', '<leader>?', ':CheatList<CR>', { noremap = true, silent = true })
    end
}
