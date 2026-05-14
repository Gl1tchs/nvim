return {
    "jbyuki/nabla.nvim",
    keys = {
        { "<leader>p", function() require("nabla").popup() end,       desc = "LaTeX Popup" },
        { "<leader>v", function() require("nabla").toggle_virt() end, desc = "LaTeX Virtual Text" },
    },
    opts = {
        autogen = true,
    }
}
