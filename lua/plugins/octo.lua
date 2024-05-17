return {
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
}
