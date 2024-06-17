return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        denols = {
          root_dir = require("lspconfig").util.root_pattern("deno.json", "deno.jsonc"),
        },
        graphql = {
          root_dir = require("lspconfig").util.root_pattern("codegen.ts"),
        },
        eslint = {
          root_dir = require("lspconfig").util.root_pattern("package.json"),
        },
      },
    },
  },
}
