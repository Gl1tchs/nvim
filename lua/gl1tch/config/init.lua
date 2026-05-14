require("gl1tch.config.set")
require("gl1tch.config.remap")
require("gl1tch.config.lazy")

-- Set color scheme
vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

-- Title
vim.opt.title = true

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    callback = function()
        local filename = vim.fn.expand("%:t")

        if filename == "" then
            filename = "[No Name]"
        end

        vim.o.titlestring = "nvim " .. filename
    end,
})
