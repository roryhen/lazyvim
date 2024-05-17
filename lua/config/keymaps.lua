local set = vim.keymap.set
-- exit insert/visual mode with jk
set("i", "jk", "<ESC>", { noremap = true, silent = true, desc = "<ESC>" })
set("v", "jk", "<ESC>", { noremap = true, silent = true, desc = "<ESC>" })

set("v", "p", "P", { noremap = true, silent = true, desc = "Paste without overwriting register" })

-- Source nvim
set("n", "<leader>sv", "<cmd>luafile $MYVIMRC<cr>", { desc = "Source nvim config" })

-- Add dashboard shortcut
set("n", "<leader>H", "<cmd>Alpha<cr>", { desc = "Go home" })

-- Center cursor after jumping
set("n", "<C-u>", "<C-u>zz", { desc = "Half page up" })
set("n", "<C-d>", "<C-d>zz", { desc = "Half page down" })

-- Windows
set("n", "<C-h>", "<C-w>h", { desc = "Window left" })
set("n", "<C-l>", "<C-w>l", { desc = "Window right" })
set("n", "<C-k>", "<C-w>k", { desc = "Window up" })
set("n", "<C-j>", "<C-w>j", { desc = "Window down" })
set("n", "<leader>w=", "5<C-w>+", { desc = "Increase window height" })
set("n", "<leader>w-", "5<C-w>-", { desc = "Decrease window height" })
set("n", "<leader>w.", "5<C-w>>", { desc = "Increase window width" })
set("n", "<leader>w,", "5<C-w><", { desc = "Decrease window width" })

-- Move lines
set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
