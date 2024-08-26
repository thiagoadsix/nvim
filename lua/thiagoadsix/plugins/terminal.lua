return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      -- Configure the plugin
      size = 20,
      open_mapping = [[<c-\>]], -- Default keybinding to toggle the terminal
      direction = "horizontal", -- Set the default direction to horizontal
      persist_size = true, -- Persist terminal size when toggled
      close_on_exit = true, -- Close terminal window when process exits
      shell = vim.o.shell, -- Use the default shell
    })

    -- Set keymaps
    local keymap = vim.keymap -- for conciseness

    -- Toggle terminal
    keymap.set("n", "<c-\\>", "<cmd>ToggleTerm<CR>", { desc = "Toggle terminal" })

    -- Change terminal direction
    keymap.set("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical<CR>", { desc = "Open terminal vertically" })
    keymap.set("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal<CR>", { desc = "Open terminal horizontally" })
    keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<CR>", { desc = "Open terminal as floating window" })

    -- Kill terminal instance (example for terminal 1)
    keymap.set("n", "<leader>tk", "<cmd>1ToggleTerm<CR>", { desc = "Kill terminal instance 1" })
  end,
}
