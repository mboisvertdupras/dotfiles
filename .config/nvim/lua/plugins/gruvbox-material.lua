return {
  "sainnhe/gruvbox-material",
  config = function()
    vim.g.gruvbox_material_background = "hard"
    vim.g.gruvbox_material_better_performance = 1
    vim.g.gruvbox_material_transparent_background = 0
    vim.g.gruvbox_material_override = {
      Normal = { bg = "#000000" },
    }
  end,
}
