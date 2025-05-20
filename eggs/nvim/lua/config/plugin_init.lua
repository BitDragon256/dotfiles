-- require("transparent").setup({})
vim.opt.termguicolors = true
vim.cmd.colorscheme 'melange'

-- NOTIFY

require("notify").setup({
    background_colour = "#9D80A4",
    render = "wrapped-compact",
    stages = "slide",
})

-- NOICE
require("noice").setup({
    lsp = {
	-- override markdown rendering so that **cmp** and other plugins use **Treesitter**
	override = {
	    ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
	    ["vim.lsp.util.stylize_markdown"] = true,
	    ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
	},
    },
    -- you can enable a preset for easier configuration
    presets = {
	bottom_search = true, -- use a classic bottom cmdline for search
	command_palette = true, -- position the cmdline and popupmenu together
	long_message_to_split = true, -- long messages will be sent to a split
	inc_rename = false, -- enables an input dialog for inc-rename.nvim
	lsp_doc_border = false, -- add a border to hover docs and signature help
    },
})

-- SETUP CUSTOM LSPS
require("lsps.pony_lsp")

-- AUTOCOMPLETION WITH NVIM-CMP

local cmp = require("cmp")
cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' },
    }, {
      { name = 'buffer' },
      { name = 'nvim_lsp' },
    })
  })

  -- To use git you need to install the plugin petertriho/cmp-git and uncomment lines below
  -- Set configuration for specific filetype.
  --[[ cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'git' },
    }, {
      { name = 'buffer' },
    })
 })
 require("cmp_git").setup() ]]-- 

  -- Set up lspconfig.
  -- local on_attach = function(client, bufnr)
  --   local opts_buffer = { noremap = true, silent = true, buffer = bufnr }
  --   vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts_buffer)
  --   vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
  --   print("pony lsp is attached")
  -- end
  -- local capabilities = require('cmp_nvim_lsp').default_capabilities()
  -- -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  -- require('lspconfig').pony_lsp.setup {
  --   capabilities = capabilities,
  --   on_attach = on_attach,
  -- }

-- LAZY LSP SERVER LOADING WITH LAZY-LSP

--[[
local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings to learn the available actions
    lsp_zero.default_keymaps({
	buffer = bufnr,
	preserve_mappings = false
    })
    lsp_zero.capabilities = capabilities
end)

require("lazy-lsp").setup {
    default_config = {
	capabilities = capabilities,
    },
    configs = {
	lua_ls = {
	settings = {
	    Lua = {
		diagnostics = {
		    -- Get the language server to recognize the `vim` global
		    globals = { "vim" },
		},
	    },
	},
    },
},
}
--]]



