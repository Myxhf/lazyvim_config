-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

vim.keymap.del("n", "<S-h>")
vim.keymap.del("n", "<S-l>")

map("n", ";", ":", { desc = "Cmd Enter Command Mode" })
map("n", "<C-c>", "<cmd>%y+<CR>", { desc = "File Copy whole" })
map("n", "<leader>n", "<cmd>set nu!<CR>", { desc = "Toggle Line number" })
map("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "Toggle Relative number" })
map("n", "<Tab>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
map("n", "<S-Tab>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map({ "n", "o" }, "H", "0", { desc = "Jump To Begining" })
map({ "n", "o" }, "L", "$", { desc = "Jump To End" })

map("n", "<leader>wv", "<C-W>v", { desc = "Split Window Right" })
map("n", "<leader>wh", "<C-W>s", { desc = "Split Window Below" })
map("n", "<leader>wav", "<C-w>b<C-w>H", { desc = "All Window Vslip" })
map("n", "<leader>wah", "<C-w>b<C-w>K", { desc = "All Window Hslip" })
map("n", "<leader>wd", "<C-W>c", { desc = "Close Current Window" })
map("n", "<leader>wo", "<C-w>o", { desc = "Close Other Window" })
