return {
  "dgox16/oldworld.nvim",
  lazy = false,
  enabled = true,
  priority = 1000,
  config = function()
    local config = {
      variant = "oled",
      styles = {
        comments = { italic = true },
      },
    }
    require("oldworld").setup(config)
    vim.cmd([[colorscheme oldworld]])
  end,
}
