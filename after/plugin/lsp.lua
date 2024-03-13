require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "tailwindcss", "intelephense", "prismals", "html", "tsserver", "volar" },
}
require("luasnip.loaders.from_vscode").lazy_load()

local testlongvar = 10000
  -- Set up nvim-cmp.
local cmp = require'cmp'

cmp.setup({
    snippet = {
        -- Use luasnip for snippets
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    --window = {
    --    completion = cmp.config.window.bordered(),
    --    documentation = cmp.config.window.bordered(),
    --},
    mapping = cmp.mapping.preset.insert({
        ['<C-l>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item
    }),
    sources = cmp.config.sources({
        { name = 'luasnip' },
        { name = 'nvim_lsp' },
    }, {
      { name = 'buffer' },
    })
})

--testlongvar

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
    },{
        { name = 'cmdline' }
    })
})


-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lsp_lua = require('lspconfig')['lua_ls']
local lsp_html = require('lspconfig')['html']
local lsp_vue = require('lspconfig')['volar']
local lsp_php = require('lspconfig')['intelephense']
local lsp_ts = require('lspconfig')['tsserver']

lsp_php.setup {
    capabilities = capabilities
}

lsp_html.setup {
    capabilities = capabilities
}

lsp_vue.setup {
    capabilities = capabilities
}

lsp_php.setup {
    capabilities = capabilities
}

lsp_ts.setup {
    capabilities = capabilities
}
