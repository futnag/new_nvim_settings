local keymap = vim.keymap

-- Do not yank with x
keymap.set('n', 'x', '"_X')
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- emacs keybindings in insert mode
keymap.set('i', '<C-f>', '<Right>')
keymap.set('i', '<C-b>', '<Left>')
keymap.set('i', '<C-p>', '<Up>')
keymap.set('i', '<C-n>', '<Down>')

keymap.set('i', '<C-a>', '<Home>', { noremap = true })
keymap.set('i', '<C-e>', '<End>', { noremap = true })

-- new tab
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })

-- split window
keymap.set('n', 'ss', ':vsplit<Return><C-w>w', { silent = true })
keymap.set('n', 'sp', ':split<Return><C-w>w', { silent = true })

-- move window
keymap.set('n', 'sh', '<C-w>h', { silent = true })
keymap.set('n', 'sj', '<C-w>j', { silent = true })
keymap.set('n', 'sk', '<C-w>k', { silent = true })
keymap.set('n', 'sl', '<C-w>l', { silent = true })
keymap.set('n', 'sc', ':q<Return>', { silent = true })

-- resize window
-- keymap.set('n', 's<left>', '<C-w>>', { silent = true })
-- keymap.set('n', 's<right>', '<C-w><', { silent = true })
-- keymap.set('n', 's<up>', '<C-w>+', { silent = true })
-- keymap.set('n', 's<down>', '<C-w>-', { silent = true })

-- lsp
keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")
keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
keymap.set("n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>")
keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")
