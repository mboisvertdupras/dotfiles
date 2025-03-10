return {
  "nvim-treesitter/nvim-treesitter",
  event = "VeryLazy",
  build = function()
    require("nvim-treesitter.install").update({ with_sync = true })
  end,
  dependencies = {
    {
      "JoosepAlviste/nvim-ts-context-commentstring",
      opts = {
        custom_calculation = function(node, language_tree)
          if vim.bo.filetype == "blade" and language_tree._lang ~= "javascript" then
            return "{{-- %s --}}"
          end
        end,
        context_commentstring = {
          enable_autocmd = false, -- Required for Blade override
        },
      },
    },
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  main = "nvim-treesitter.configs",
  opts = {
    ensure_installed = {
      "bash",
      "css",
      "dockerfile",
      "go",
      "html",
      "http",
      "javascript",
      "json",
      "jsonc",
      "lua",
      "markdown",
      "php",
      "phpdoc",
      "python",
      "regex",
      "sql",
      "vim",
      "vue",
      "yaml",
    },
    auto_install = true,
    highlight = {
      enable = true,
      use_languagetree = true,
    },
    indent = {
      enable = true,
      disable = { "yaml", "php" },
    },
    rainbow = {
      enable = true,
    },
    textobjects = {
      select = {
        enable = true,
        lookahead = true,
        keymaps = {
          ["if"] = "@function.inner",
          ["af"] = "@function.outer",
          ["ia"] = "@parameter.inner",
          ["aa"] = "@parameter.outer",
        },
      },
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
    require("ts_context_commentstring").setup({})

    local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
    parser_config.blade = {
      install_info = {
        url = "https://github.com/EmranMR/tree-sitter-blade",
        files = { "src/parser.c" },
        branch = "main",
      },
      filetype = "blade",
    }

    vim.filetype.add({
      pattern = {
        [".*%.blade%.php"] = "blade",
      },
      priority = 1000,
    })

    vim.g.skip_ts_context_commentstring_module = true
  end,
}
