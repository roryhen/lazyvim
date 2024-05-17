-- exit insert/visual mode with jk
vim.keymap.set("i", "jk", "<ESC>", { noremap = true, silent = true, desc = "<ESC>" })
vim.keymap.set("v", "jk", "<ESC>", { noremap = true, silent = true, desc = "<ESC>" })

vim.keymap.set("v", "p", "P", { noremap = true, silent = true, desc = "Paste without overwriting register" })

-- Source nvim
vim.keymap.set("n", "<leader>sv", "<cmd>luafile $MYVIMRC<cr>", { desc = "Source nvim config" })

-- Add dashboard shortcut
vim.keymap.set("n", "<leader>H", "<cmd>Alpha<cr>", { desc = "Go home" })

-- Center cursor after jumping
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down" })
