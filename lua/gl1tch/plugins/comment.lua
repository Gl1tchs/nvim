return {
    {
        'numToStr/Comment.nvim',
        keys = {
            -- Normal Mode: Comment
            { "<C-k>c", function() require("Comment.api").locked("comment.linewise.current")() end,                   desc = "Comment line" },
            -- Normal Mode: Uncomment
            { "<C-k>u", function() require("Comment.api").locked("uncomment.linewise.current")() end,                 desc = "Uncomment line" },

            -- Visual Mode: Comment
            { "<C-k>c", "<ESC><CMD>lua require('Comment.api').locked('comment.linewise')(vim.fn.visualmode())<CR>",   mode = "x",             desc = "Comment selection" },
            -- Visual Mode: Uncomment
            { "<C-k>u", "<ESC><CMD>lua require('Comment.api').locked('uncomment.linewise')(vim.fn.visualmode())<CR>", mode = "x",             desc = "Uncomment selection" },
        },
        opts = {
            mappings = { basic = false, extra = false }
        },
    },
}
