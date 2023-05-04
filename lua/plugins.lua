-- Ensuring Packer Is Intalled
local status, packer = pcall(require,'packer')
if (not status) then
	print("Packer Is Not Working")
end

--Adding Packer
vim.cmd[[packadd packer.nvim]]

--Packer Config For Isntall Plugings In An Over Window Over Neovim
packer.init{
	display = {
		open_fn = function()
			return require('packer.util').float{border = "rounded"}
		end,	  
	}
}

-- Plugins
packer.startup(function(use)
	use 'wbthomason/packer.nvim'       --Packer Itself(Necessary)
	use 'folke/tokyonight.nvim'        --TokyoNight ColorScheme For Neovim
	use 'nvim-lualine/lualine.nvim'    --Lualine As StatusLine
	use 'kyazdani42/nvim-web-devicons' --Web Dev Icons
	use { --Telescope For Finding Files And Stuff
		'nvim-telescope/telescope.nvim', --Make Sure Have RipGrep Installed on Your Sytem
		requires = {{'nvim-lua/plenary.nvim'}}
	}
	use 'akinsho/bufferline.nvim'        --BuffeLine For Tabline

end)

-- Plugins Setup
require('packer-plugins/tokyonight')
require('packer-plugins/lualine')
require('packer-plugins/telescope')
require('packer-plugins/bufferline')
