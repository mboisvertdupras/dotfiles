return {
  "folke/ts-comments.nvim",
  enabled = false,
  opts = {
    lang = {
      blade = {
        "{{-- %s --}}", -- Blade-style comments
        comment = "{{-- %s --}}", -- Explicit comment node handling
        php = "// %s", -- Nested PHP comments
      },
    },
  },
}
