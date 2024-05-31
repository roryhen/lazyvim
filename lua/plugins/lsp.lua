return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        denols = {
          root_dir = require("lspconfig").util.root_pattern("deno.json", "deno.jsonc"),
        },
        graphql = {
          root_dir = require("lspconfig").util.root_pattern("codegen.ts"),
        },
      },
    },
  },
}
