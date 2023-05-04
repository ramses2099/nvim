--Ensuging Telescope Is Working
local status, telescope = pcall(require,'telescope')
if (not status) then return end

--Telescope Setup
local builtin = require('telescope.builtin')
vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', 'fb', builtin.buffers, {})

