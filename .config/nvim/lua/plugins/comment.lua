return {
  "numToStr/Comment.nvim",
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring", -- Required for Blade context
  },
  config = function()
    require("Comment").setup({
      pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
      toggler = {
        blade = "{{-- %s --}}", -- Blade-specific toggle
      },
      opleader = {
        blade = "{{--",
      },
      extra = {
        above = "{{--",
        below = "{{--",
        eol = "{{--",
      },
    })

    -- Set Blade-specific comment patterns
    require("Comment.ft").set("blade", {
      line = "{{-- %s --}}",
      block = "{{--%s--}}",
    })
  end,
}
