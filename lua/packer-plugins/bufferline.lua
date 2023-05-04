--Ensuring BufferLine Is Working
local status, bufferline = pcall(require,'bufferline')
if (not status) then
	print("BufferLine Is Not Working")
end

--BufferLine Setup
bufferline.setup{
	options = {
		mode = 'tabs',
		sparator_style = 'thin',
		alwasy_show_bufferline = false,
		show_buffer_close_icons = false,
		show_close_icons = false,
		color_icons = true
	}
}



