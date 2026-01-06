return {
  "nvim-telescope/telescope.nvim",
  branch = "master",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")

    telescope.setup({
      defaults = {
--        preview = {
--            treesitter = false,
--        },
        mappings = {
          i = {
            ["<C-j>"] = "move_selection_next",
            ["<C-k>"] = "move_selection_previous",
          },
        },
      },
    })

    -- Keymaps
    local map = vim.keymap.set
    map("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
    map("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
    map("n", "<leader>fb", builtin.buffers, { desc = "Buffers" })
    map("n", "<leader>fh", builtin.help_tags, { desc = "Help tags" })
  end,
}

