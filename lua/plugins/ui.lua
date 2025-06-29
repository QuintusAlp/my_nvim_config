return {
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			-- Désactiver les overrides pour laisser nvim-tree gérer les input()
			override = {
				["vim.ui.input"] = false,
				["vim.ui.select"] = true,
				["vim.notify"] = false, -- ⛔️ NE PAS remplacer vim.notify
			},
			notify = {
				enabled = false, -- ⛔️ Désactiver le système de notification de Noice
			},
			messages = {
				enabled = false, -- enables the Noice messages UI
			},
		},
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	},
}
