-- <leader> default is "\"

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

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to prev [D]iagnostic message"})
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message"})
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic error messages"})
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic Quickfix"})
