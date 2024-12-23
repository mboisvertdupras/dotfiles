return {
  "laytan/tailwind-sorter.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-lua/plenary.nvim" },
  enabled = false,
  build = "cd formatter && npm ci && npm run build",
  config = function()
    require("tailwind-sorter").setup({
      on_save_enabled = true,
    })
  end,
}
