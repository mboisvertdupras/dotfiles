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
    lazy = false,
    opts = {
      flavour = "frappe",
      transparent_background = true,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
