require("colorizer").setup {
  filetypes = {
    "typescript",
    "typescriptreact",
    "javascript",
    "javascriptreact",
    "css",
    "html",
    "astro",
    "lua",
  },
  user_default_options = {
    names = false,
    rgb_fn = true,
    hsl_fn = true,
    tailwind = "both",
  },
  buftypes = {},
}
