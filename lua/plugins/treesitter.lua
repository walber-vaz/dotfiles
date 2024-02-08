return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "astro",
        "css",
        "python",
        "gitignore",
        "go",
        "graphql",
        "http",
        "scss",
        "sql",
        "diff",
        "javascript",
        "typescript",
        "jsdoc",
        "lua",
        "luadoc",
        "markdown",
        "yaml",
        "toml",
        "json",
        "jsonc",
        "tsx",
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
      vim.filetype.add({
        extension = {
          mdx = "mdx",
        },
      })
      vim.treesitter.language.register("markdown", "mdx")
    end,
  },
}
