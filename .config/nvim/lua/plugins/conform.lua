return {
  {
    "stevearc/conform.nvim",
    event = "LspAttach",
    opts = {
      quiet = true,
      formatters_by_ft = {
        -- html = { "prettier" },
        php = { "phpcbf" },
        vue = { "volar", "eslint" },
        javascript = { "eslint" },
        javascriptreact = { "eslint" },
        blade = { "blade-formatter" },
      },
      formatters = {
        phpcbf = {
          command = "phpcbf",
          args = { "--standard=PSR12", "$FILENAME" },
        },
      },
      notify_on_error = true,
    },
  },
}
