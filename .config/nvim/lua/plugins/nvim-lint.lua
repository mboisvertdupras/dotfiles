return {
  "mfussenegger/nvim-lint",
  opts = {
    linters = {
      phpcs = {
        cmd = "phpcs",
        stdin = true,
        args = { "-q", "--report=json", "--standard=PSR12", "-" },
        ignore_exitcode = true,
        parser = function(output, _)
          local severities = {
            ERROR = vim.diagnostic.severity.ERROR,
            WARNING = vim.diagnostic.severity.WARN,
          }

          if vim.trim(output) == "" or output == nil then
            return {}
          end

          if not vim.startswith(output, "{") then
            vim.notify(output)
            return {}
          end

          local decoded = vim.json.decode(output)
          local diagnostics = {}
          local messages = decoded["files"]["STDIN"]["messages"]

          for _, msg in ipairs(messages or {}) do
            table.insert(diagnostics, {
              lnum = msg.line - 1,
              end_lnum = msg.line - 1,
              col = msg.column - 1,
              end_col = msg.column - 1,
              message = msg.message,
              code = msg.source,
              source = "phpcs",
              severity = assert(severities[msg.type], "missing mapping for severity " .. msg.type),
            })
          end

          return diagnostics
        end,
      },
    },
  },
}
