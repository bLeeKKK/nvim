return function()
	vim.defer_fn(function()
		require("copilot").setup({
			cmp = {
				enabled = true,
				method = "getCompletionsCycling",
			},
			-- panel = {
			-- 	enabled = true,
			-- 	auto_refresh = false,
			-- 	keymap = {
			-- 		jump_prev = "<M-[>",
			-- 		jump_next = "<M-]>",
			-- 		accept = "<CR>",
			-- 		refresh = "gr",
			-- 		open = "<M-CR>",
			-- 	},
			-- 	layout = {
			-- 		position = "bottom", -- | top | left | right
			-- 		ratio = 0.4,
			-- 	},
			-- },
			suggestion = {
				enabled = true,
				auto_trigger = false,
				debounce = 75,
				keymap = {
					accept = "<M-CR>",
					accept_word = false,
					accept_line = false,
					next = "<M-]>",
					prev = "<M-[>",
					dismiss = "<C-]>",
				},
			},
			panel = {
				-- if true, it can interfere with completions in copilot-cmp
				enabled = false,
			},
			-- suggestion = {
			-- 	-- if true, it can interfere with completions in copilot-cmp
			-- 	enabled = false,
			-- },
			filetypes = {
				["dap-repl"] = false,
				["big_file_disabled_ft"] = false,
			},
		})
	end, 100)
end
