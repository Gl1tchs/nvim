vim.opt.guicursor = ""

vim.opt.nu = true             -- Enable line numbers
vim.opt.relativenumber = true -- Relative line numbers

vim.opt.tabstop = 4           -- Tab width
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true   -- Use spaces instead of tabs
vim.opt.smartindent = true -- Auto indent

vim.opt.wrap = false       -- Disable line wrap

vim.opt.swapfile = false   -- Disable swap files
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true      -- Persistent undo

vim.opt.hlsearch = false     -- Don't keep search highlighted after enter
vim.opt.incsearch = true     -- Incremental search

vim.opt.termguicolors = true -- True color support

vim.opt.scrolloff = 8        -- Keep 8 lines above/below cursor
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50 -- Faster update time

vim.opt.colorcolumn = "80"

vim.g.python3_host_prog = vim.fn.expand("~/.nvim-venv/bin/python")
