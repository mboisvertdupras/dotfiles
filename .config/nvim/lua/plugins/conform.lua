return {
  {
    "stevearc/conform.nvim",
    event = "LspAttach",
    opts = {
      quiet = true,
      formatters_by_ft = {
        -- html = { "prettier" },
        php = function(bufnr)
          -- Check for HTML tags in first 50 lines
          for i = 0, math.min(49, vim.api.nvim_buf_line_count(bufnr) - 1) do
            local line = vim.api.nvim_buf_get_lines(bufnr, i, i + 1, false)[1]
            if line:match("<%a+") then
              return { "phpcbf" }
            end
          end
          return { "pint" }
        end,
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
        pint = {
          command = "pint",
          args = { "$FILENAME" },
        },
      },
      notify_on_error = true,
    },
  },
}
