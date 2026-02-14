return {
  'nvim-treesitter/nvim-treesitter',
  --  lazy = false,       -- load at startup
  -- priority = 1000,    -- load early
  build = ':TSUpdate',
  event = { 'BufReadPost', 'BufNewFile' }, -- Weird tracestack at startup without this line
  config = function()
    local ok, configs = pcall(require, 'nvim-treesitter.configs')
    if not ok then
      return
    end

    configs.setup {
      ensure_installed = {
        'lua',
        'python',
        'javascript',
        'typescript',
        'vimdoc',
        'vim',
        'regex',
        'sql',
        'dockerfile',
        'toml',
        'json',
        'gitignore',
        'yaml',
        'make',
        'markdown',
        'markdown_inline',
        'bash',
        'css',
        'scss',
        'html',
      },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    }
  end,
}
