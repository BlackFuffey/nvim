return {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function ()
        require("cyberdream").setup({

            variant = "default",

            -- Enable transparent background
            transparent = true,

            saturation = 1,

            -- Enable italics comments
            italic_comments = true,

            -- Replace all fillchars with ' ' for the ultimate clean look
            hide_fillchars = false,

            -- Modern borderless telescope theme - also applies to fzf-lua
            borderless_pickers = false,

            -- Set terminal colors used in `:terminal`
            terminal_colors = false,

            -- Improve start up time by caching highlights. Generate cache with :CyberdreamBuildCache and clear with :CyberdreamClearCache
            cache = true,

            ---- Disable or enable colorscheme extensions
            extensions = {
                telescope = true,
                notify = true,
                mini = true,
                treesitter = true,
                lazy = true
            },
        })
    end

}
