return {
  "rose-pine/neovim",
  name = "rose-pine",
  opts = {
    palette = {
      main = {
        base = "#000000",
      },
    },
    highlight_groups = {
      FlashLabel = { fg = "base", bg = "leaf", inherit = false },
      CurSearch = { fg = "text", bg = "leaf", blend = 20, inherit = false },
      Search = { fg = "text", bg = "leaf", blend = 20, inherit = false },

      StatusLine = { fg = "love", bg = "love", blend = 10 },
      StatusLineNC = { fg = "subtle", bg = "surface" },

      TelescopeBorder = { fg = "overlay", bg = "overlay" },
      TelescopeNormal = { fg = "subtle", bg = "overlay" },
      TelescopeSelection = { fg = "text", bg = "highlight_med" },
      TelescopeSelectionCaret = { fg = "love", bg = "highlight_med" },
      TelescopeMultiSelection = { fg = "text", bg = "highlight_high" },

      TelescopeTitle = { fg = "base", bg = "love" },
      TelescopePromptTitle = { fg = "base", bg = "pine" },
      TelescopePreviewTitle = { fg = "base", bg = "iris" },

      TelescopePromptNormal = { fg = "text", bg = "surface" },
      TelescopePromptBorder = { fg = "surface", bg = "surface" },
    },
  },
}
