return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		opts = {
			size = 22,
			open_mapping = [[<c-\>]],
			hide_numbers = true,
			shade_filetypes = {},
			shade_terminals = true,
			shading_factor = 2,
			start_in_insert = true,
			insert_mappings = true,
			persist_size = true,
			direction = "float",
			close_on_exit = true,
			shell = vim.o.shell,
			float_opts = {
				winblend = 0,
				width = 180,
				height = 45,
				border = "single",
			},
		},
	},
}