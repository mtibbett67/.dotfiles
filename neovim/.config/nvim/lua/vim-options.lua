vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.guicursor = "a:block"

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.formatoptions = "c"
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.colorcolumn = "80"
vim.opt.signcolumn = "yes"

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
-- The next line may be broken
--vim.opt.undodir = os.getenv("HOME") .. "~/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.spelllang = "en_us"
