return {
    -- {
    --     "folke/tokyonight.nvim",
    --     lazy = false,
    --     priority = 1000,
    --     opts = {
    --     	transparent = true,
    --     },
    --     styles = {
    --     	sidebars = "transparent",
    --     	floats = "transparent",
    --     },
    -- },
    -- {
    --     "xiyaowong/transparent.nvim",
    --     lazy = false,
    --     priority = 1000
    -- },
    {
	"romgrk/barbar.nvim",
	dependencies = {
		'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
		'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
	},
	init = function() vim.g.barbar_auto_setup = false end,
	opts = {},
    },
    {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
	  "hrsh7th/cmp-nvim-lsp",
	  "hrsh7th/cmp-buffer",
	},
    },
    { "hrsh7th/vim-vsnip" },
    { "rcarriga/nvim-notify" },
    { "nvim-treesitter/nvim-treesitter" }, -- on error maybe check :TSUpdate
    { "MunifTanjim/nui.nvim" },
    {
	"folke/noice.nvim",
	event = "VeryLazy",
	dependencies = {
		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
	opts = {},
    },
    {
		"neovim/nvim-lspconfig",
	},
    --[[
    {
	    "dundalek/lazy-lsp.nvim",
	    dependencies = {
		    "neovim/nvim-lspconfig",
		    { "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
		    "hrsh7th/cmp-nvim-lsp",
		    "hrsh7th/nvim-cmp",
	    },
    },
    --]]
    {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
	    "nvim-lua/plenary.nvim",
	    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
	    "MunifTanjim/nui.nvim",
	    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
    },
    {
	"scalameta/nvim-metals",
	dependencies = {
	    "nvim-lua/plenary.nvim",
	},
	ft = { "scala", "sbt", "java" },
	opts = function()
	    local metals_config = require("metals").bare_config()
	    metals_config.capabilities = require("cmp_nvim_lsp").default_capabilities()
	    metals_config.init_options.statusBarProvider = "off"
	    metals_config.on_attach = function(client, bufnr)
		  -- your on_attach function
	    end

	    return metals_config
	end,
	-- config = function(self, metals_config)
	--     local nvim_metals_group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
	--     vim.api.nvim_create_autocmd("FileType", {
	-- 	pattern = self.ft,
	-- 	callback = function()
	-- 	    require("metals").initialize_or_attach(metals_config)
	-- 	end,
	-- 	group = nvim_metals_group,
	--     })
	-- end
    },
    {
	"savq/melange-nvim"
    },
    {
	"voldikss/vim-floaterm"
    }
}

