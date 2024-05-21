return {
  {
    "nvimdev/dashboard-nvim",
    opts = function(_, opts)
      local logo = [[
   __        ______  ________ __      __ _______  ________ __     __ 
  |  \      /      \|        \  \    /  \       \|        \  \   |  \
  | ▓▓     |  ▓▓▓▓▓▓\\▓▓▓▓▓▓▓▓\▓▓\  /  ▓▓ ▓▓▓▓▓▓▓\ ▓▓▓▓▓▓▓▓ ▓▓   | ▓▓
  | ▓▓     | ▓▓__| ▓▓   /  ▓▓  \▓▓\/  ▓▓| ▓▓  | ▓▓ ▓▓__   | ▓▓   | ▓▓
  | ▓▓     | ▓▓    ▓▓  /  ▓▓    \▓▓  ▓▓ | ▓▓  | ▓▓ ▓▓  \   \▓▓\ /  ▓▓
  | ▓▓     | ▓▓▓▓▓▓▓▓ /  ▓▓      \▓▓▓▓  | ▓▓  | ▓▓ ▓▓▓▓▓    \▓▓\  ▓▓ 
  | ▓▓_____| ▓▓  | ▓▓/  ▓▓___    | ▓▓   | ▓▓__/ ▓▓ ▓▓_____   \▓▓ ▓▓  
  | ▓▓     \ ▓▓  | ▓▓  ▓▓    \   | ▓▓   | ▓▓    ▓▓ ▓▓     \   \▓▓▓   
   \▓▓▓▓▓▓▓▓\▓▓   \▓▓\▓▓▓▓▓▓▓▓    \▓▓    \▓▓▓▓▓▓▓ \▓▓▓▓▓▓▓▓    \▓    
                                                                     
    ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"

      opts.config.header = vim.split(logo, "\n")

      return opts
    end,
  },
}