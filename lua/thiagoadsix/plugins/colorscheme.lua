-- return {
--   "nyoom-engineering/oxocarbon.nvim",
--   priority = 1000,
--   config = function()
--     -- Set the background color to dark or light
--     vim.opt.background = "dark" -- or "light" depending on your preference
--
--     -- Apply the Oxocarbon colorscheme
--     vim.cmd.colorscheme("oxocarbon")
--
--     -- Optional: Add transparent background
--     vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--     vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--   end,
-- }
return {
  "projekt0n/github-nvim-theme",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require("github-theme").setup({
      -- ...
    })

    vim.cmd("colorscheme github_dark_default")
  end,
}
