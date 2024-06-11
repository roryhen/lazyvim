return {
  {
    "rcarriga/nvim-notify",
    opts = {
      render = "compact",
      top_down = false,
    },
    keys = {
      { "<leader>sN", "<cmd>:Telescope notify<cr>", desc = "Notification history (notify)" },
    },
  },
}
