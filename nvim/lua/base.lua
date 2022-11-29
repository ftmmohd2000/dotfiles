local set = vim.opt

vim.cmd('autocmd!')

vim.scriptencoding = 'utf-8'
set.encoding = 'utf-8'
set.fileencoding = 'utf-8'

vim.wo.number = true
vim.g.mapleader = ' '

set.title = true
set.autoindent = true
set.hlsearch = true
set.backup = false
set.showcmd = true
set.cmdheight = 1
set.laststatus = 2
set.expandtab = false
set.scrolloff = 10
set.shell = 'zsh'
set.backupskip = '/tmp/*,/private/tmp/*'
set.inccommand = 'split'
set.ignorecase = true
set.smarttab = true
set.breakindent = true
set.shiftwidth = 2
set.tabstop = 2
set.ai = true -- Auto Indent
set.si = true -- Smart Indent
set.wrap = false -- No wrap lines
set.relativenumber = true
set.cursorline = true
set.backspace = 'start,eol,indent'
set.list = true
set.listchars:append('tab:> ')
set.path:append { '**' } -- Finding files -- search subfolders
set.wildignore:append { '*/node_modules/*' }

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])
-- doesn't work in iterm2

vim.api.nvim_create_autocmd("InsertLeave", {
	pattern = '*',
	command = 'set nopaste'
})

-- Add asterisks in block comments
set.formatoptions:append { 'r' }
