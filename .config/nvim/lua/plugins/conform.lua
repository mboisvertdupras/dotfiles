return {
  {
    "stevearc/conform.nvim",
    event = "LspAttach",
    opts = function(_, opts)
      local util = require("conform.util")

      return vim.tbl_deep_extend("force", opts, {
        quiet = true,
        formatters_by_ft = {
          -- html = { "prettier" },
          php = { "pint" },
          vue = { "volar", "eslint" },
          javascript = { "eslint" },
          javascriptreact = { "eslint" },
          blade = { "blade-formatter" },
        },
        formatters = {
          pint = {
            command = util.find_executable({ "vendor/bin/pint", "pint" }, "pint"),
            args = { "$FILENAME" },
          },
          ["blade-formatter"] = {
            command = util.find_executable({ "node_modules/.bin/blade-formatter", "blade-formatter" }, "blade-formatter"),
            args = { "--write", "--sort-tailwindcss-classes", "$FILENAME" },
            stdin = false,
          },
        },
        notify_on_error = true,
      })
    end,
  },
}
