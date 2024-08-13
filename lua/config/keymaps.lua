-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set({ "n", "x", "i" }, "<C-a>", "<Home>", { desc = "Go to home", remap = false })
vim.keymap.set({ "n", "x", "i" }, "<C-e>", "<End>", { desc = "Go to end", remap = false })

local map = LazyVim.safe_keymap_set

map("n", "<S-tab>", "<cmd>bprevious<cr>", { desc = "Previous Buffer" })
map("n", "<tab>", "<cmd>bnext<cr>", { desc = "Next Buffer" })

