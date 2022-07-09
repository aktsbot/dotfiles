local treesitter = require('nvim-treesitter.configs')

treesitter.setup {
    highlight = {
        enable = true,
        disable = {},
    },
    indent = {
        enable = true,
        disable = {},
    },
    ensure_installed = {
        "tsx",
        "toml",
        "json",
        "yaml",
        "html",
        "scss"
    },
    autotag = {
        enable = true,
    }
}

