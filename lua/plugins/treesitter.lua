return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "markdown",
        "markdown_inline",
        "bash",
        "python",
        "typst",
        "cpp",
      },
      highlight = { enable = true },
    },
  },
}
