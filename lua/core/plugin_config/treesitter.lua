require'nvim-treesitter.configs'.setup {
  -- A List of parser names, or 'all'
  ensure_installed = {'c', 'lua', 'rust', 'ruby', 'vim',
    'python', 'css', 'bash', 'typescript', 'java', 'json',
    'http', 'html', 'javascript', 'gitignore', 'csv', 'xml', 'yaml'  },

  -- Install Parsers synch. only with ensure_installed
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  }
  }
