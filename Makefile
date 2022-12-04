packer_path := ~/.local/share/nvim/site/pack/packer/start/packer.nvim

help:
	@echo 'make nvim - configure nvim'
	@echo 'make packer - configure packer'

nvim:
	rm -rf $HOME/.config/nvim
	cp -r . $HOME/.config/nvim
	nvim -u NONE -c "source ~/.config/nvim/init.lua" -c PackerSync

packer:
	rm -rf ${packer_path}
	git clone --depth 1 https://github.com/wbthomason/packer.nvim ${packer_path}
