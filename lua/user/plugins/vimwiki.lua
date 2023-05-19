return {
  "vimwiki/vimwiki",
  event = "VeryLazy",
  init = function()
    vim.g.vimwiki_list = {
      {
        path = "~/projects/vault/pages",
        syntax = "markdown",
        vimwiki_global_ext = 0,
        ext = ".md",
      },
    }
  end,
}
