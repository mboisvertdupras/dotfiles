-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.lazyvim_php_lsp = "intelephense"
vim.g.root_spec = { "cwd" }
vim.g.snacks_animate = false

vim.opt.colorcolumn = "80"
vim.opt.fillchars = { eob = "~" }

vim.opt.termguicolors = false

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.api.nvim_set_hl(0, "ColorColumn", { ctermbg = 233 })
    vim.api.nvim_set_hl(0, "CursorLine", { ctermbg = 233 })
    vim.api.nvim_set_hl(0, "Visual", { ctermbg = 237 })
  end,
})
