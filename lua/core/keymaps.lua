vim.opt.showcmd = true

-- use spaces for tabs and other
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true


-- disable arrow keys
local defaults = { noremap = true, silent = true }
vim.keymap.set("i", "<Left>", "", defaults)
vim.keymap.set("i", "<Right>", "", defaults)
vim.keymap.set("i", "<Up>", "", defaults)
vim.keymap.set("i", "<Down>", "", defaults)
vim.keymap.set("n", "<Left>", "", defaults)
vim.keymap.set("n", "<Right>", "", defaults)
vim.keymap.set("n", "<Up>", "", defaults)
vim.keymap.set("n", "<Down>", "", defaults)
