-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end

vim.opt.rtp:prepend(lazypath)
if vim.g.vscode then
    -- VS Code specific settings
    -- Only load "logic" plugins like nvim-surround or nvim-autopairs
    require("lazy").setup({
      spec = {
        { "windwp/nvim-autopairs", config = true },
        { "kylechui/nvim-surround", config = true },
        -- DO NOT load Telescope, Lualine, or Treesitter here
      }
    })
    
    -- Custom VS Code Keybindings
    vim.keymap.set('n', '<Leader>f', "<Cmd>call VSCodeNotify('workbench.action.quickOpen')<CR>")
else
    -- Use imports (NOT require)
require("lazy").setup({
  { import = "plugins" },
})
end
