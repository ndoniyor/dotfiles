-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Set default indentation to 4 spaces
vim.opt.tabstop = 4        -- Number of spaces a tab counts for
vim.opt.shiftwidth = 4     -- Number of spaces to use for each step of (auto)indent
vim.opt.softtabstop = 4    -- Number of spaces a tab counts for while editing
vim.opt.expandtab = true   -- Use spaces instead of tabs

-- Use wl-clipboard (Wayland)
vim.g.clipboard = {
  name = "wl-clipboard",
  copy = {
    ["+"] = "wl-copy",
    ["*"] = "wl-copy --primary",
  },
  paste = {
    ["+"] = "wl-paste --no-newline",
    ["*"] = "wl-paste --no-newline --primary",
  },
  cache_enabled = 0,
}
vim.opt.clipboard = "unnamedplus"

-- Reduce ESC key delay
vim.opt.timeoutlen = 300   -- Time to wait for a mapped sequence to complete (ms)
vim.opt.ttimeoutlen = 10   -- Time to wait for a key code sequence to complete (ms)
