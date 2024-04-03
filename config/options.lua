-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

-- long line split show
opt.wrap = true

-- Disable autoformat for lua files
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "lua", "c" },
  callback = function()
    vim.b.autoformat = false
  end,
})

-- 相对行号
vim.wo.relativenumber = true
-- 搜索大小写不敏感，除非包含大写
vim.o.ignorecase = true
vim.o.smartcase = true
-- 边输入边搜索
vim.o.incsearch = true
-- 当文件被外部程序修改时，自动加载
vim.o.autoread = true
vim.bo.autoread = true
-- 自动补全不自动选中
vim.g.completeopt = "menu,menuone,noselect,noinsert"
-- 补全增强
vim.o.wildmenu = true
-- 补全最多显示10行
vim.o.pumheight = 10

-- vim.g.translator_default_engines = "youdao"
vim.g.translator_default_engines = {'bing', 'haici', 'google'}
