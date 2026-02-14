return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  opts = {
    formatters_by_ft = {
      python = { 'ruff_format' },

      html = { 'prettier' },
      json = { 'prettier' },
      markdown = { 'prettier' },
      javascript = { 'prettier' },
      typescript = { 'prettier' },
      css = { 'prettier' },
      scss = { 'prettier' },
      yaml = { 'prettier' },

      lua = { 'stylua' },

      sh = { 'shfmt' },
      bash = { 'shfmt' },
      zsh = { 'shfmt' },

      -- dockerfile = { "hadolint" }, -- Might not be compatible
    },

    format_on_save = {
      timeout_ms = 1000,
      lsp_format = 'never',
    },
  },
}
