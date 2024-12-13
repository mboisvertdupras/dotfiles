return {
  {
    -- Remove phpcs linter.
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        php = {},
      },
    },
  },
}
