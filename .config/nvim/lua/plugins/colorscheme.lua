return {
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    enabled = false,
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
  },
  {
    "catppuccin/nvim",
    enabled = false,
    lazy = false,
    opts = {
      transparent_background = true,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "default",
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = {
          normal = {
            a = { fg = 232, bg = 4, gui = "bold" },
            b = { fg = 252, bg = 235 },
            c = { fg = 250, bg = 233 },
          },
          insert = { a = { fg = 232, bg = 2, gui = "bold" } },
          visual = { a = { fg = 232, bg = 5, gui = "bold" } },
          replace = { a = { fg = 232, bg = 1, gui = "bold" } },
          command = { a = { fg = 232, bg = 3, gui = "bold" } },
          inactive = {
            a = { fg = 250, bg = 233 },
            b = { fg = 250, bg = 233 },
            c = { fg = 250, bg = 233 },
          },
        },
      },
    },
  },
}
