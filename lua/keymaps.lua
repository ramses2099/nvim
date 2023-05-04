local keymap = vim.keymap
--Opening Files
keymap.set('n','<C-o>',':edit . <Return>',{silent = true})
--Opening Files In VSPLIT Mode
keymap.set('n', '<C-a>', ':vsplit . <Return>',{silent = true})
--Opening Files In SPLIT Mode
keymap.set('n', '<S-a>', ':split . <Return>',{silent = true})
--Opening Files In TABS
keymap.set('n', '<S-t>', ':tabedit . <Return>',{silent = true})
