return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup({
				size = 15,
				open_mapping = [[<C-/>]],
				-- 'horizontal', 'vertical', 'float', 'tab'
				direction = "horizontal",
				shade_terminals = false,
				start_in_insert = true,
				insert_mappings = true, -- whether or not the open mapping applies in insert mode
				persist_size = true,
				close_on_exit = true, -- close the terminal window when the process exits
			})

			-- Better navigation within the terminal mode
			function _G.set_terminal_keymaps()
				local opts = { buffer = 0 }
				-- Press ESC to go to Normal mode in terminal
				vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
				-- Navigate out of terminal with Ctrl+hjkl
				vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
				vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
				vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
				vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
			end

			-- Apply keymaps when a terminal opens
			vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
		end,
	},
}
