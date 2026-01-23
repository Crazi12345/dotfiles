return {
	"Vigemus/iron.nvim",
	ft = { "python", "sh", "lua", "haskell", "elixir" },
	config = function()
		local iron = require("iron.core")
		local view = require("iron.view")
		local common = require("iron.fts.common")

		iron.setup({
			config = {
				scratch_repl = true,
				repl_definition = {
					elixir = {
						command = function()
							local has_mix = #vim.fn.findfile("mix.exs", ".;") > 0
							if has_mix then
								return { "iex", "-S", "mix" }
							else
								return { "iex" }
							end
						end,
						format = common.bracketed_paste,
					},
					-- Existing definitions:
					sh = {
						command = { "zsh" },
					},
					python = {
						command = { "python3" },
						format = common.bracketed_paste_python,
						block_dividers = { "# %%", "#%%" },
						env = { PYTHON_BASIC_REPL = "1" },
					},
				},
				repl_open_cmd = view.bottom(40),
				dap_integration = true,
			},
			keymaps = {
				toggle_repl = "<space>rr",
				restart_repl = "<space>rR",
				send_motion = "<space>sc",
				visual_send = "<space>sc",
				send_file = "<space>sf",
				send_line = "<space>sl",
				send_paragraph = "<space>sp",
				send_until_cursor = "<space>su",
				send_mark = "<space>sm",
				cr = "<space>s<cr>",
				interrupt = "<space>s<space>",
				exit = "<space>sq",
				clear = "<space>cl",
			},
			highlight = { italic = true },
			ignore_blank_lines = true,
		})

		vim.keymap.set("n", "<space>rf", "<cmd>IronFocus<cr>", { desc = "Iron: Focus REPL" })
		vim.keymap.set("n", "<space>rh", "<cmd>IronHide<cr>", { desc = "Iron: Hide REPL" })
	end,
}
