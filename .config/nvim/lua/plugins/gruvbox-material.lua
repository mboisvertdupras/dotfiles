return {
  {
    "f4z3r/gruvbox-material.nvim",
    config = function()
      require("gruvbox-material").setup({
        contrast = "hard",
        customize = function(group, o)
          -- List of groups that should have pure black background
          local black_bg_groups = {
            "Normal",
            "NormalFloat",
            "EndOfBuffer",
          }

          if vim.tbl_contains(black_bg_groups, group) then
            o.bg = "#000000"
          end

          return o
        end,
      })

      -- Get the default colors from gruvbox-material
      local colors = require("gruvbox-material.colors").get(vim.o.background, "hard")

      -- Force GitSigns highlights after colorscheme setup
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "gruvbox-material",
        callback = function()
          vim.api.nvim_set_hl(0, "SignColumn", { bg = "#000000" })
          vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = colors.green, bg = "#000000" })
          vim.api.nvim_set_hl(0, "GitSignsChange", { fg = colors.blue, bg = "#000000" })
          vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = colors.red, bg = "#000000" })
        end,
      })
    end,
  },
}
