return {
  {
    "stevearc/conform.nvim",
    event = "LspAttach",
    opts = {
      quiet = true,
      formatters_by_ft = {
        php = { "pint", "php_cs_fixer" },
        vue = { "volar", "eslint" },
        javascript = { "eslint" },
        javascriptreact = { "eslint" },
      },
    },
  },
}
