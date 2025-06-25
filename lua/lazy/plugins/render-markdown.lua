return {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = {
        'nvim-treesitter/nvim-treesitter',
        'nvim-tree/nvim-web-devicons'
    },
    config = function()

        require('render-markdown').setup({
            render_modes = true
        })

        local rmd = require('render-markdown')

        rmd.enable()

    end

}
