return {
  {
    "goolord/alpha-nvim",
    opts = function()
      local dashboard = require("alpha.themes.dashboard")
      local logo = [[
 __         ______   ________  __      __  _______   ________  __     __ 
/  |       /      \ /        |/  \    /  |/       \ /        |/  |   /  |
$$ |      /$$$$$$  |$$$$$$$$/ $$  \  /$$/ $$$$$$$  |$$$$$$$$/ $$ |   $$ |
$$ |      $$ |__$$ |    /$$/   $$  \/$$/  $$ |  $$ |$$ |__    $$ |   $$ |
$$ |      $$    $$ |   /$$/     $$  $$/   $$ |  $$ |$$    |   $$  \ /$$/ 
$$ |      $$$$$$$$ |  /$$/       $$$$/    $$ |  $$ |$$$$$/     $$  /$$/  
$$ |_____ $$ |  $$ | /$$/____     $$ |    $$ |__$$ |$$ |_____   $$ $$/   
$$       |$$ |  $$ |/$$      |    $$ |    $$    $$/ $$       |   $$$/    
$$$$$$$$/ $$/   $$/ $$$$$$$$/     $$/     $$$$$$$/  $$$$$$$$/     $/
      ]]

      dashboard.section.header.val = vim.split(logo, "\n")
    end,
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        layout_strategy = "vertical",
      },
    },
  },
  {
    "L3MON4D3/LuaSnip",
    keys = function()
      return {}
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        eslint = {},
        denols = {
          root_dir = require("lspconfig.util").root_pattern("deno.json", "deno.jsonc", ".git", "import_map.json"),
        },
        tsserver = {
          root_dir = require("lspconfig.util").root_pattern("package.json", "tsconfig.json", ".git"),
        },
        graphql = {
          -- filetypes = { "graphql", "typescriptreact", "javascriptreact", "typescript" },
          root_dir = require("lspconfig.util").root_pattern(".git", "codegen.ts"),
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
  {
    "jparise/vim-graphql",
  },
  {
    "terrortylor/nvim-comment",
  },
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
    config = function()
      vim.keymap.set("i", "<C-]>", function()
        return vim.fn["codeium#CycleCompletions"](1)
      end, { expr = true, silent = true })
      vim.keymap.set("i", "<C-[>", function()
        return vim.fn["codeium#CycleCompletions"](-1)
      end, { expr = true, silent = true })
      vim.keymap.set("i", "<C-x>", function()
        return vim.fn["codeium#Clear"]()
      end, { expr = true, silent = true })
    end,
  },
  {
    "pwntester/octo.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      enable_builtin = true,
      suppress_missing_scope = {
        projects_v2 = true,
      },
    },
    keys = {
      { "<leader>O", "<cmd>Octo<cr>", desc = "Octo" },
    },
  },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-neotest/neotest-jest",
    },
    opts = {
      adapters = {
        ["neotest-jest"] = {
          jestCommand = "pnpm test --",
        },
      },
    },
  },
  {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = {
      { "tpope/vim-dadbod", lazy = true },
      { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true },
    },
    cmd = {
      "DBUI",
      "DBUIToggle",
      "DBUIAddConnection",
      "DBUIFindBuffer",
    },
    init = function()
      -- Your DBUI configuration
      vim.g.db_ui_use_nerd_fonts = 1
    end,
  },
}
