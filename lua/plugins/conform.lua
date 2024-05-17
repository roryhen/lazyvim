local prettier = { "prettierd", "prettier" }

return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        css = { prettier },
        graphql = { prettier },
        html = { prettier },
        javascript = { prettier },
        javascriptreact = { prettier },
        json = { prettier },
        jsonc = { prettier },
        liquid = { prettier },
        typescript = { prettier },
        typescriptreact = { prettier },
        vue = { prettier },
      },
    },
  },
}
