-- ~/.config/nvim/init.lua or wherever your entrypoint is
-- Set up lazy.nvim and bootstrap it if not present

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Lazy manages itself
  { "folke/lazy.nvim" },

  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.2",
    dependencies = { "nvim-lua/plenary.nvim" }
  },

  -- Colorscheme
  {
    "Mofiqul/dracula.nvim",
    name = "dracula",
    config = function()
      vim.cmd("colorscheme dracula")
    end
  },

  -- Tree-sitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate"
  },

  -- Misc plugins
  { "theprimeagen/harpoon" },
  { "mbbill/undotree" },
  { "tpope/vim-fugitive" },

  -- Tree view and UI
  { "nvim-tree/nvim-tree.lua" },
  { "nvim-tree/nvim-web-devicons" },
  { "akinsho/toggleterm.nvim" },
  { "akinsho/bufferline.nvim" },

  -- LSP
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    dependencies = {
      -- Add any specific LSP or completion deps here
    }
  }
})
