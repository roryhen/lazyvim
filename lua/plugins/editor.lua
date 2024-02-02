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
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
        },
      },
    },
  },
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      open_mapping = [[<c-\>]],
      size = 25,
    },
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
    },
  },
}
