-- Set .php files to use HTML filetype
vim.filetype.add({
  extension = {
    php = "html",
  },
})

-- Set syntax to PHP for HTML filetype when extension is .php
vim.api.nvim_create_autocmd("FileType", {
  pattern = "html",
  callback = function(args)
    local filename = vim.api.nvim_buf_get_name(args.buf)
    if vim.fn.fnamemodify(filename, ":e") == "php" then
      vim.bo[args.buf].syntax = "php"
    end
  end,
})
