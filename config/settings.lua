local opt = vim.opt

-- Performance
-- opt.lazyredraw = true
opt.shell = "fish"
opt.updatetime = 100

-- UI
opt.number = true
opt.relativenumber = true
opt.termguicolors = true
opt.cursorline = true
opt.signcolumn = "yes"
opt.showmode = false
opt.showcmd = false
opt.cmdheight = 0
opt.scrolloff = 0
opt.conceallevel = 2
opt.cursorline = true
opt.cursorcolumn = true

-- Behavior
opt.hidden = true
opt.errorbells = false
opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.undodir = vim.fn.stdpath("data") .. "/undodir"
opt.incsearch = true
opt.hlsearch = false
opt.ignorecase = true
opt.smartcase = true
opt.completeopt = "menuone,noselect"

-- Indentation
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true
opt.wrap = false

-- Memory & CPU
opt.history = 100
opt.synmaxcol = 240
opt.updatetime = 250

-- Mouse
opt.mouse = "a"

-- Windows
opt.splitbelow = true
opt.splitright = true

-- Treesitter folding
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldenable = false

-- Global statusline
opt.laststatus = 1
-- opt.laststatus = 3
