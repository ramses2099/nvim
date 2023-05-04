--Ensuring LuaLine Is Working
local status, lualine = pcall(require,'lualine')
if (not status) then
	print("LuaLine Is Not Working")
	return
end

--LuaLine Setup
lualine.setup{
	options = {
		icons_enabled = true
	},
	sections = {
		lualine_x = {''},
		lualine_y = {''}
	}
}
