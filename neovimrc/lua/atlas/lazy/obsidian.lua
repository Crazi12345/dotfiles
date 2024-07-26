return {
    "epwalsh/obsidian.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
        "nvim-treesitter/nvim-treesitter"
    },
    opts = {
        -- Your existing Obsidian configuration options ... (keep them as they are)
        workspaces = {
            { name = "Main Brain", path = vim.fn.expand("~/Documents/Main Brain") },
            { name = "Work",       path = vim.fn.expand("~/Documents/Work Vault") },
        },
        mappings = {
            -- ... (your other custom mappings)
        },
        ui = {
            enable = true,
            conceal_preview = false,
        },
    },
    cmd = {
        "ObsidianNew", "ObsidianSearch", "ObsidianQuickSwitch", "ObsidianBacklinks", "ObsidianTemplate",
        "ObsidianFollowLink", "ObsidianToggleCheckbox"
    },
    keys = {
        { "gf",         "<cmd>ObsidianFollowLink<cr>",                                desc = "Obsidian Follow Link" },
        { "<leader>on", "<cmd>ObsidianNew<cr>",                                       desc = "Obsidian Create File" },
        { "<leader>On", "<cmd>ObsidianNew<cr>",                                       desc = "Obsidian Create File" },
        { "<leader>ch", "<cmd>ObsidianToggleCheckbox<cr>",                            desc = "Obsidian Toggle Checkbox" },
        { "<leader>o",  "<cmd>Telescope find_files cwd=~/Documents/Main\\ Brain<cr>", desc = "Search Main Brain" },
        { "<leader>O",  "<cmd>Telescope find_files cwd=~/Documents/Work\\ Vault<cr>", desc = "Search Work Vault" },
        { "<leader>os", "<cmd>Telescope live_grep cwd=~/Documents/Main\\ Brain<cr>",  desc = "Search Main Brain" },
        { "<leader>Os", "<cmd>Telescope live_grep cwd=~/Documents/Work\\ Vault<cr>",  desc = "Search Work Vault" },
    },
    config = function(_, opts)
        vim.o.conceallevel = 1
        require("nvim-treesitter.configs").setup {
            ensure_installed = "markdown",
            highlight = { enable = true },
        }
        require("obsidian").setup(opts)
    end,
}
