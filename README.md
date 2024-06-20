# nvim setup
install nvim, tree-sitter, and clang
## install packer
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
 ```
## open the packer.lua file
`nvim lua/zred/packer.lua`
## source packer from nvim
`:so`
## install plugins
`:PackerInstall`
