return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.config").setup({
      ensure_installed = { "c", "lua", "vim", "vim", "vimdoc" },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}

