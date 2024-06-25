local set = vim.keymap.set

-- Source nvim
set("n", "<leader>sv", "<cmd>luafile $MYVIMRC<cr>", { desc = "Source nvim config" })

-- Center cursor after jumping
set("n", "<C-u>", "<C-u>zz", { desc = "Half page up" })
set("n", "<C-d>", "<C-d>zz", { desc = "Half page down" })

-- Windows
set("n", "<leader>w=", "5<C-w>+", { desc = "Increase window height" })
set("n", "<leader>w-", "5<C-w>-", { desc = "Decrease window height" })
set("n", "<leader>w.", "5<C-w>>", { desc = "Increase window width" })
set("n", "<leader>w,", "5<C-w><", { desc = "Decrease window width" })
