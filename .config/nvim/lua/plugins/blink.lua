return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "super-tab",
      ["<Tab>"] = {
        require("blink.cmp.keymap.presets").get("super-tab")["<Tab>"][1],
        require("lazyvim.util.cmp").map({ "snippet_forward", "ai_accept" }),
        "fallback",
      },
      -- ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
      -- ["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
      -- ["<CR>"] = { "accept", "fallback" },
      -- ["<Esc>"] = { "hide", "fallback" },
      -- ["<Up>"] = { "scroll_documentation_up", "fallback" },
      -- ["<Down>"] = { "scroll_documentation_down", "fallback" },
    },
    completion = {
      list = {
        selection = {
          preselect = false,
          auto_insert = false,
        },
      },
    },
  },
}
