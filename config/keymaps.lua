-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

vim.keymap.del("n", "<S-h>")
vim.keymap.del("n", "<S-l>")
vim.keymap.del("n", "<leader>qq")

-- general ---------------------------------------------------------
map("n", ";", ":", { desc = "Cmd Enter Command Mode" })
map("n", "<A-q>", "<cmd> qa <CR>", { desc = "Quit All" })
map("n", "<C-c>", "<cmd>%y+<CR>", { desc = "File Copy whole" })
map({ "n", "o", "v" }, "H", "0", { desc = "Jump To Begining" })
map({ "n", "o", "v" }, "L", "$", { desc = "Jump To End" })
map({ "n", "v" }, "<C-d>", "22j")
map({ "n", "v" }, "<C-u>", "22k")
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "General Clear highlights" })
map("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "Toggle Relative number" })

-- buffer navigation -----------------------------------------------
map("n", "<Tab>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
map("n", "<S-Tab>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })

-- Windows ---------------------------------------------------------
-- Windows split
map("n", "<leader>wv", "<C-W>v", { desc = "Split Window Right" })
map("n", "<leader>wh", "<C-W>s", { desc = "Split Window Below" })
map("n", "<leader>wav", "<C-w>b<C-w>H", { desc = "All Window Vslip" })
map("n", "<leader>wah", "<C-w>b<C-w>K", { desc = "All Window Hslip" })
map("n", "<leader>wd", "<C-W>c", { desc = "Close Current Window" })
map("n", "<leader>wo", "<C-w>o", { desc = "Close Other Window" })

-- Windows navigation
map("i", "<C-h>", "<Left>", { desc = "Move Left" })
map("i", "<C-l>", "<Right>", { desc = "Move Right" })
map("i", "<C-j>", "<Down>", { desc = "Move Down" })
map("i", "<C-k>", "<Up>", { desc = "Move Up" })

-- Windows resize
map("n", "<C-Right>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
map("n", "<C-Left>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Toggle Telescope ------------------------------------------------
map("n", "<C-p>", "<cmd> Telescope find_files <CR>", { desc = "Live grep" })
map("n", "<C-f>", LazyVim.telescope("live_grep"))
map("n", "<C-q>", "<cmd>Telescope oldfiles<cr>")

-- IncRename -------------------------------------------------------
map("n", "<leader>ra", ":IncRename ")

-- Toggle float terminal -------------------------------------------
map("n", "<A-o>", function() LazyVim.terminal() end, { desc = "Terminal (cwd)" })
map("t", "<A-o>", "<cmd>close<cr>", { desc = "Hide Terminal" })
-- map({ "n", "t" }, "<A-i>", function()
--   require("nvterm.terminal").toggle("float")
-- end, { desc = "Toggle floating term" })
map({ "n", "t" }, "<A-v>", function()
  require("nvterm.terminal").toggle("vertical")
end, { desc = "Toggle floating term" })
map({ "n", "t" }, "<A-h>", function()
  require("nvterm.terminal").toggle("horizontal")
end, { desc = "Toggle floating term" })

-- Translator ------------------------------------------------------
map("n", "<Leader>t", "<Plug>TranslateW", { silent = true })
map("v", "<Leader>t", "<Plug>TranslateWV", { silent = true })

-- neotree ---------------------------------------------------------
map("n", "<C-n>", function()
  require("neo-tree.command").execute({ toggle = true, dir = vim.g.initial_cwd })
end)

-- marks -----------------------------------------------------------
map("n", "<leader>ma", "<cmd>MarksListAll<CR>", { desc = "Show All Marks" })
map("n", "<leader>mb", "<cmd>MarksListBuf<CR>", { desc = "Show Marks in Buffer" })
