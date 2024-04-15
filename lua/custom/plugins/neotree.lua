return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      filesystem = {
        filtered_items = {
          visible = true,
          show_hidden_count = true,
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_by_name = {
            '.git',
            '.DS_Store',
            'thumbs.ds',
          },
          never_show = { 'node_modules' },
        },
      },
    }

    vim.keymap.set('n', '<leader>e', function()
      require('neo-tree.command').execute { source = 'filesystem', toggle = true }
    end, { desc = 'Show file system' })
  end,
}
