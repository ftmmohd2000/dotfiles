local status, ts = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    'tsx',
    'lua',
    'json',
    'css',
    'c',
    'cpp',
    'bash',
    'dockerfile',
    'gitignore',
    'go',
    'graphql',
    'html',
    'java',
    'latex',
    'proto',
    'python',
    'regex',
    'rust',
    'scss',
    'sql',
    'toml',
    'typescript',
    'yaml',
  },
  autotag = {
    enable = true,
  }
}
