return {
    {
        "nvim-treesitter/nvim-treesitter",
        tag = "v0.10.0",
        lazy = false,
        build = ":TSUpdate",
        opts = {
            install_dir = vim.fn.stdpath('data') .. '/site',
            ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "query", "rust", "java", "python" },
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        }
    }
}
