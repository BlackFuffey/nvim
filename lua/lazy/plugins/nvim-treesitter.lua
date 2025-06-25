return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    branch = 'main',
    build = ':TSUpdate',
    config = function ()
        require("nvim-treesitter").install({
             -- Global
            'comment', 'regex',

            -- Linux System Configuration
            'desktop', 'passwd', 'pem', 'ssh_config',

            -- Shell
            'bash', 'awk', 'readline', 'powershell',

            -- C/C++
            'c', 'cpp', 'printf', 'cmake', 'make', 'ninja',

            -- Lua
            'lua', 'luadoc', 'luap', 'luau',

            -- Web
            'css', 'html_tags', 'html',

            -- JavaScript/TypeScript
            'ecma', 'javascript', 'typescript', 'jsdoc', 'jsx', 'tsx',

            -- VimScript
            'vim', 'vimdoc',

            -- Git
            'git_config', 'git_rebase', 'gitattributes', 'gitcommit', 'gitignore',

            -- Generic Configurations
            'hjson', 'json', 'json5', 'jsonc', 'toml', 'yaml',

            -- Software Configurations
            'hyprlang', 'sway', 'nginx', 'dockerfile', 'tmux',

            -- Generic Markups
            'markdown', 'markdown_inline', 'xml',

            -- Miscellaneous
            'java', 'kotlin', 'llvm', 'python', 'zig'
        })

        vim.api.nvim_create_autocmd('FileType', {
            pattern = { '*' },
            callback = function()
                vim.treesitter.start()
                vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
                vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end,
        })
    end
}
