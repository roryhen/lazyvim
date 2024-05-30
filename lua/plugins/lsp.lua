return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        eslint = {},
        denols = {
          root_dir = require("lspconfig").util.root_pattern("deno.json", "deno.jsonc"),
        },
        graphql = {
          root_dir = require("lspconfig").util.root_pattern("codegen.ts"),
        },
      },
      setup = {
        eslint = function()
          require("lazyvim.util").lsp.on_attach(function(client)
            if client.name == "eslint" then
              client.server_capabilities.documentFormattingProvider = true
            elseif client.name == "tsserver" then
              client.server_capabilities.documentFormattingProvider = false
            end
          end)
        end,
      },
    },
  },
}
