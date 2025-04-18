-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = {
  "html",
  "cssls",
  "clangd",
  "ts_ls",
  "jsonls",
  "cmake",
  "tailwindcss",
  "eslint",
  "dockerls",
  "yamlls",
  "taplo",
  "pyright",
  "prismals",
}
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

require("lspconfig").pyright.setup {
  settings = {
    python = {
      linting = {
        enabled = true,
        pylintEnabled = false,
        flake8Enabled = true,
      },
    },
  },
}

lspconfig.emmet_ls.setup {
  filetypes = {
    "css",
    "html",
    "javascript",
    "javascriptreact",
    "typescriptreact",
    "vue",
  },
  init_options = {
    html = {
      options = {
        ["bem.enabled"] = true,
      },
    },
  },
}

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
