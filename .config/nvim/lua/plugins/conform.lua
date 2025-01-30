return {
  {
    "stevearc/conform.nvim",
    event = "LspAttach",
    opts = {
      quiet = true,
      formatters_by_ft = {
        php = { "pint" },
        vue = { "volar", "eslint" },
        javascript = { "eslint" },
        javascriptreact = { "eslint" },
        blade = { "blade-formatter" },
      },
    },
  },
}
