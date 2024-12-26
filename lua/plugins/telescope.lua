return {
  "nvim-telescope/telescope.nvim",
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  
  keys = {
    {
      "<leader>ff",
      function()
        require('telescope.builtin').find_files()
      end,
      mode = "n",
      desc = "Telescope find files",
    },
    {
      "<leader>fg",
      function()
        require('telescope.builtin').live_grep()
      end,
      mode = "n",
      desc = "Telescope live grep",
    },
    {
      "<leader>fb",
      function()
        require('telescope.builtin').buffers()
      end,
      mode = "n",
      desc = "Telescope buffers",
    },
    {
      "<leader>fh",
      function()
        require('telescope.builtin').help_tags()
      end,
      mode = "n",
      desc = "Telescope help tags",
    },
  }
}
