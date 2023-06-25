return {
  "vimwiki/vimwiki",
  event = "VeryLazy",
  init = function()
    vim.g.vimwiki_list = {
      {
        path = "~/projects/pages",
        syntax = "markdown",
        vimwiki_global_ext = 0,
        ext = ".md",
      },
    }
    vim.keymap.set("n", "<leader>ww", "<cmd>VimwikiIndex 1<cr>")
    vim.keymap.set("n", "<leader>wt", "<cmd>VimwikiIndex 2<cr>")
  end,
}
