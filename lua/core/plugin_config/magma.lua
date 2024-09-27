
vim.keymap.set('n', '<Space>r', nvim_exec('MagmaEvaluateOperator', v:true), {})
vim.keymap.set('n', '<Space>rr', nvim_exec('MagmaEvaluateLine<CR>'), {})
vim.keymap.set('v', '<Space>r', nvim_exec('<C-u>MagmaEvaluateVisual<CR>'), {})
vim.keymap.set('n', '<Space>rc', nvim_exec('MagmaReevaluateCell<CR>'), {})
vim.keymap.set('n', '<Space>rd', nvim_exec('MagmaDelete<CR>'), {})
vim.keymap.set('n', '<Space>ro', nvim_exec('MagmaShowOutput<CR>'), {})

vim.g.magma_automatically_open_output = v:false
vim.g.magma_image_provider = "ueberzug"
