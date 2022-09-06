require"nvim-treesitter.configs".setup{
    ensure_installed = {
        "c",
        "cpp",
        "eex",
        "elixir",
        "go",
        "haskell",
        "heex",
        "java",
        "javascript",
        "lua",
        "python",
        "proto",
        "regex",
        "rust",
        "scala",
        "vim",
    },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    incremental_selection = {
        enable = true,
    },
}
