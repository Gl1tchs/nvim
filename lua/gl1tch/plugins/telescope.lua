return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "v0.2.1",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local builtin = require("telescope.builtin")
            -- Keymaps for searching
            vim.keymap.set('n', '<leader>pf', builtin.find_files, {}) -- Find files
            vim.keymap.set('n', '<C-p>', builtin.git_files, {})      -- Git files
            vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})  -- Grep search
        end
    }
}
