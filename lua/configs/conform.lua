local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    c = { "clang-format" },
    cpp = { "clang-format" },
    css = { "prettier" },
    html = { "prettier" },
    dockerfile = { "hadolint" },
    python = { "black" },
    javascript = { "prettier" },
  },

  linters_by_ft = {
    python = { "flake8" },
    dockerfile = { "hadolint" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
