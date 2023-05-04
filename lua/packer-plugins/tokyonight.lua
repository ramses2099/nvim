--Ensuring TokyNight Is Working
local status, tokyonight = pcall(require, 'tokyonight')
if (not status) then
	print("TokyoNight Is Not Working")
	return
end

--TokyoNight Setup
tokyonight.setup{
   style = "night",
   transparent = true,
   termianl_colors = true
}
