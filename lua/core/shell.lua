vim.opt.shell = "powershell.exe"
vim.opt.shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command'
vim.opt.shellxquote = ''
vim.opt.shellpipe = '| Out-File -Encoding UTF8 %s'
vim.opt.shellredir = '| Out-File -Encoding UTF8 %s'
