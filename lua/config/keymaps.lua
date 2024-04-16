-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

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

-- Remove lazygit keymaps
vim.keymap.del("n", "<leader>gg")
vim.keymap.del("n", "<leader>gG")
