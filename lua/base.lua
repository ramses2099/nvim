vim.cmd('autocmd!')
local g = vim.g
local o = vim.o
local wo = vim.wo
local op = vim.opt

o.number = true
o.numberwidth = 6
o.relativenumber = true

op.hidden = true
op.autoindent = true
op.clipboard = 'unnamedplus'
op.backup = false
op.showcmd = true
op.cmdheight = 1
op.smarttab = true
op.shiftwidth = 4
op.tabstop = 4
op.ai = true --Auto Indent
op.si = true --Smart Indent
op.wrap = false
op.smartcase = false
op.swapfile = false
op.writebackup = false
op.updatetime = 300
