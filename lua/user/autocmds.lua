-- only show tabline when more than one tab
vim.api.nvim_create_autocmd("User", {
  desc = "Hide tabline when only one buffer and one tab",
  pattern = "AstroBufsUpdated",
  group = vim.api.nvim_create_augroup("hidetabline", { clear = true }),
  callback = function()
    local new_showtabline = #vim.t.bufs > 1 and 2 or 1
    if new_showtabline ~= vim.opt.showtabline:get() then vim.opt.showtabline = new_showtabline end
  end,
})
vim.cmd [[au FocusGained,BufEnter * checktime]]
-- load parameters for neovide
if vim.g.neovide then
  vim.g.neovide_transparency = 0.85
  vim.g.neovide_input_macos_alt_is_meta = true
  vim.o.guifont = "FiraMono Nerd Font Mono:h11"
  -- vim.cmd [[set guifont=MonoLisa:10,Symbols\ Nerd\ Font:h10]]
  vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.g.transparency = 0.85
end
-- Enable spell and wrap for markdown and gitcommit
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "gitcommit", "markdown" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = true
  end,
})
