return {
  "mofiqul/vscode.nvim",
  priority = 1000,
  config = function()
    -- Setup the theme
    require("vscode").setup({
      -- Enable transparent background
      transparent = false,

      -- Enable italic comments
      italic_comments = true,

      -- Disable nvim-tree background color
      disable_nvimtree_bg = false,

      -- Override colors (you can customize this further)
      color_overrides = {
        vscLineNumber = "#FFFFFF",
      },

      -- Override highlight groups (you can customize this further)
      group_overrides = {
        -- this supports the same val table as vim.api.nvim_set_hl
        -- use colors from this or use colors from vim.g.colors_name
        Cursor = { fg = "#FFFFFF", bg = "#FF0000", bold = true },
      },
    })

    -- Set the colorscheme
    vim.cmd("colorscheme vscode")
  end,
}
