return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "clang-format",
        "cmake",
        "vscode-html-language-server",
        "vscode-css-language-server",
        "ts_ls",
        "tailwindcss-language-server",
        "eslint-lsp",
        "prettierd",
      },
    },
  },

  {
    "windwp/nvim-ts-autotag",
    ft = { "html", "javascript", "typescript", "svelte", "vue", "javascriptreact", "typescriptreact" },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  {
    "github/copilot.vim",
    lazy = false,
    config = function() -- Mapping tab is already used by NvChad
      vim.g.copilot_no_tab_map = true
      vim.g.copilot_assume_mapped = true
      vim.g.copilot_tab_fallback = ""
      -- The mapping is set to other key, see custom/lua/mappings
      -- or run <leader>ch to see copilot mapping section
    end,
  },

  { "wakatime/vim-wakatime", lazy = false },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "c",
        "cpp",
        "json",
        "javascript",
        "typescript",
        "svelte",
        "tsx",
        "python",
        "rust",
        "toml",
        "yaml",
      },
    },
  },
}
