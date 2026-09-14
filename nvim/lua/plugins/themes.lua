return {
  {
    "rockyzhang24/arctic.nvim",
    dependencies = { "rktjmp/lush.nvim" },
    name = "arctic",
    branch = "main",
    enabled = true,
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme arctic")
    end,
  },

  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
  },

  {
    "nyoom-engineering/oxocarbon.nvim",
    build = false,
    lazy = false,
    priority = 1000,
  },

  {
    "valloric/vim-valloric-colorscheme",
    lazy = false,
    priority = 1000,
  },

  {
    "catppuccin/nvim",
    enabled = false,
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
      flavour = "macchiato",
      background = {
        light = "latte",
        dark = "macchiato",
      },
      transparent_background = false,
      term_colors = true,
      styles = {
        comments = { "italic" },
        conditionals = { "bold" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
      },
      integrations = {
        treesitter = true,
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = "italic",
            hints = "italic",
            warnings = "italic",
            information = "italic",
          },
          underlines = {
            errors = "underline",
            hints = "underline",
            warnings = "underline",
            information = "underline",
          },
        },
        cmp = true,
        gitsigns = true,
        telescope = true,
        nvimtree = true,
        notify = true,
        mini = true,
      },
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin")
    end,
  },

  {
    -- color picker
    -- :Themery
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
      require("themery").setup({
        themes = {
          "arctic",
          "gruvbox",
          "tokyonight",
          "catppuccin",
          "oxocarbon",
          "valloric",
        },
        livePreview = true,
      })
    end,
  },
}
