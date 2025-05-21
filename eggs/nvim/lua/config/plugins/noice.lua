local noice = require('noice')

noice.setup({
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
	bottom_search = false, -- use a classic bottom cmdline for search
	command_palette = false, -- position the cmdline and popupmenu together
	long_message_to_split = true, -- long messages will be sent to a split
	inc_rename = false, -- enables an input dialog for inc-rename.nvim
	lsp_doc_border = true, -- add a border to hover docs and signature help
    },
    cmdline = {
	view = "cmdline_popup",
	format = {
	    cmdline = { icon = "" },
	},
    },
    views = {
	cmdline_popup = {
	    position = {
		row = 8,
		col = "50%",
	    },
	    size = {
		width = 60,
		height = "auto",
	    },
	    border = {
		style = "none",
		padding = { 1, 2 },
	    },
	    win_options = {
		winhighlight = {
		    Normal = "Normal",
		    NormalFloat = "NormalFloat",
		    FloatBorder = "FloatBorder",
		},
	    }
	},
	popupmenu = {
	    relative = "editor",
	    position = {
		row = 10,
		col = "50%",
	    },
	    size = {
		width = 60,
		height = 15,
	    },
	    border = {
		style = "none",
		padding = { 0, 2 },
	    },
	    win_options = {
		winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
	    },
	    scrollbar = false,
	},
    },
})
