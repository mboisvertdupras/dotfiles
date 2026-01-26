return {
  "cormacrelf/dark-notify",
  lazy = false,
  enabled = false,
  config = function()
    require("dark_notify").run({
      schemes = {
        dark = "catppuccin-frappe",
        light = "catppuccin-latte",
      },
    })
  end,
}
