return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      go = { "golines" },
    },
    formatters = {
      golines = {
        args = { "--max-len=120", "--base-formatter=gofmt" },
      },
    },
  },
}
