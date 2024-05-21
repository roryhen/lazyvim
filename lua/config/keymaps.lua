local set = vim.keymap.set
-- exit insert/visual mode with jk
set("i", "jk", "<ESC>", { noremap = true, silent = true, desc = "<ESC>" })
set("v", "jk", "<ESC>", { noremap = true, silent = true, desc = "<ESC>" })

set("v", "p", "P", { noremap = true, silent = true, desc = "Paste without overwriting register" })

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
