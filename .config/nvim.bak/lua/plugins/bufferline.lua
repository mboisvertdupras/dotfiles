return {
  "akinsho/bufferline.nvim",
  enabled = true,
  keys = {
    { "<leader>bj", "<cmd>BufferLinePick<cr>", desc = "Jump to buffer" },
  },
  after = "catppuccin",
  config = function()
    require("bufferline").setup({
      highlights = require("catppuccin.special.bufferline").get_theme(),
    })
  end,
}
