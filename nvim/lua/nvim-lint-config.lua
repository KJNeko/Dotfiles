local cppcheck = require('lint.linters.cppcheck')
table.insert(cppcheck.args, '--project=compile_commands.json')

return {
	"mfessenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local lint = requires("lint")

		lint.linters_by_ft = {}

		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true})
		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, { group = lint_augroup, callback = function() lint.try_lint() end,})

		vim.keymap.set("n", "<leader>ll", function()
			lint.try_lint()
		end, { desc = "Trigger linting" })
	end
}
