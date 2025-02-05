return {
  "telescope.nvim",
  enabled = false,
  dependencies = {
    "nvim-telescope/telescope-fzf-native.nvim",
    "nvim-telescope/telescope-live-grep-args.nvim",
    build = "make",
    config = function()
      local telescope = require("telescope")
      telescope.load_extension("fzf")
      telescope.load_extension("live_args_grep")
    end,
  },
}
