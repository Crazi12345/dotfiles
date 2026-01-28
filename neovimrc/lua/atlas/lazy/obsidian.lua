return {
    "obsidian-nvim/obsidian.nvim",
    version = "*",
    ft = "*",

    keys = {
      -- Existing mappings
      { "<leader>oo", "<cmd>Obsidian quick_switch<cr>", desc = "Quick Switch" },
      { "<leader>os", "<cmd>Obsidian search<cr>", desc = "Search Text" },
      { "<leader>on", "<cmd>Obsidian new<cr>", desc = "New Note" },
      { "<leader>ot", "<cmd>Obsidian today<cr>", desc = "Today's Note" },
      { "<leader>ow", "<cmd>Obsidian workspace<cr>", desc = "Select Workspace" },
      -- Vault Switching
      { "<leader>oW", "<cmd>Obsidian workspace work<cr>", desc = "Switch to Work" },
      { "<leader>oS", "<cmd>Obsidian workspace school<cr>", desc = "Switch to School" },
      { "<leader>oP", "<cmd>Obsidian workspace personal<cr>", desc = "Switch to Personal" },
      -- Open Todos File
      {
        "<leader>od",
        function()
            local client = require("obsidian").get_client()
            vim.cmd("edit " .. tostring(client.dir / "todos.md"))
        end,
        desc = "Open Todos"
      },
      -- NEW: Create/Toggle Checkbox
      { "<leader>oc", "<cmd>Obsidian toggle_checkbox<cr>", desc = "Toggle Checkbox" },
    },

    ---@module 'obsidian'
    ---@type obsidian.config
    opts = {
        legacy_commands = false,
        workspaces = {
            { name = "personal", path = "~/Documents/Main Brain" },
            { name = "work", path = "~/Documents/Work Vault" },
            { name = "school", path = "~/Documents/Master Project" },
        },
    },
}
