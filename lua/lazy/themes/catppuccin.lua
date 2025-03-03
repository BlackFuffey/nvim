return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function ()
        require("catppuccin").setup({
            flavour = "latte",
            transparent_background = true,
            show_end_of_buffer = true,
            dim_inactive = {
                enabled = false,
                shade = "dark",
                percentage = 0.15
            }
        })
    end
}
