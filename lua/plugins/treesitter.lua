return {
  'nvim-treesitter/nvim-treesitter',
  'nvim-treesitter/nvim-treesitter-textobjects',

  config = function()
    require("nvim-treesitter.configs").setup()
  end,
  
  keys = {
    {
      "<A-f>",
      "<cmd>lua require'nvim-treesitter.textobjects.select'.select_word()<CR>",
      desc = "select same word.",
      noremap = true,
      silent = true 
    }
  },


  

  opts = {

    
  }  

}
