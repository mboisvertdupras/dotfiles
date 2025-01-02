return {
  {
    "f4z3r/gruvbox-material.nvim",
    config = function()
      require("gruvbox-material").setup({
        contrast = "hard",
        customize = function(_, o)
          o.bg = "#000000"
          return o
        end,
      })
    end,
  },
}
