
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
    use 'neovim/nvim-lspconfig'          --Plugin For LSP
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
end)

-- Plugins Setup
require('packer-plugins/tokyonight')
require('packer-plugins/lualine')
require('packer-plugins/telescope')
require('packer-plugins/bufferline')
require('packer-plugins/lspconfig')
require('packer-plugins/nvimcmp')
