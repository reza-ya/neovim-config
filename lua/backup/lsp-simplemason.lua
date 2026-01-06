return {
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = function()
      require("mason").setup()
    end,
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      -- Register clangd using the new API
      vim.lsp.config.clangd = {
        cmd = { "clangd" },
        filetypes = { "c", "cpp" },
        root_markers = { ".git", "compile_commands.json" },
      }

      -- Enable clangd
      vim.lsp.enable("clangd")

      -- LSP keymaps
      local map = vim.keymap.set
      map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
      map("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
      map("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
      map("n", "gr", vim.lsp.buf.references, { desc = "References" })
      map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
      map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })

      map("n", "[d", vim.diagnostic.goto_prev, { desc = "Prev diagnostic" })
      map("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
      map("n", "<leader>e", vim.diagnostic.open_float, { desc = "Line diagnostics" })
    end,
  },
}

