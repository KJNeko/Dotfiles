
local cmp = require'cmp'


cmp.setup({
	snippet = {
		expand = function(args)
		require('luasnip').lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-e>'] = cmp.mapping.close(),
		['<C-Space>'] = cmp.mapping.confirm({ select = true }),
	}),
	sources = {
		{ name = "nvim_lua" },
		{ name = "nvim_lsp", max_item_count = 5 },

		{ name = "path" },
		{ name = "luasnip" },
		{ name = "buffer", keyword_length = 5 },
	},

	--formatting = {
	--	format = lspkind.cmp_format {
	--		with_text = true,
	--		menu = { 
	--			nvim_lua = "[api]",
	--			nvim_lsp = '[LSP',
	--			path = "[path]",
	--			luasnip = "[snip]",
	--			buffer = "[buf]",
	--		},
	--	},
	--}

})

cmp.setup.filetype('gitcommit', {
	sources = cmp.config.sources({
		{ name = 'git' },
	}, {
		{ name = 'buffer' },
	})
})

cmp.setup.cmdline({ '/', '?' }, {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = 'buffer' }
	}
})

cmp.setup.cmdline(':', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = 'path' },
	}, {
		{ name = 'cmdline' }
	})
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig')['ccls'].setup {
	capabilities = capabilities
}

require("cmp_keybinds")


