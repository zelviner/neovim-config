-- nvim-cmp 自动补全插件
return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",     -- LSP 补全
    "hrsh7th/cmp-path",         -- 文件路径补全
    "hrsh7th/cmp-buffer",       -- 缓冲区补全
    "hrsh7th/cmp-cmdline",      -- 命令行补全
    "saadparwaiz1/cmp_luasnip", -- Lua Snip 补全
  },

  config = function()
    local cmp = require('cmp')
    -- 常规补全配置
    cmp.setup({
      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body) -- 使用 LuaSnip 作为代码片段引擎
        end,
      },
      mapping = {
        ['<Down>'] = cmp.mapping.select_next_item(), -- 使用下箭头选择下一项
        ['<Up>'] = cmp.mapping.select_prev_item(),   -- 使用上箭头选择上一项
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),     -- 上翻文档
        ['<C-f>'] = cmp.mapping.scroll_docs(4),      -- 下翻文档
        ['<C-Space>'] = cmp.mapping.complete(),      -- 手动触发补全
        ['<C-e>'] = cmp.mapping.abort(),             -- 取消补全
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- 确认补全
      },
      sources = cmp.config.sources({
        { name = 'nvim_lsp' }, -- LSP 补全
        { name = 'buffer' }, -- 缓冲区补全
        { name = 'path' }, -- 文件路径补全
      }),
    })

    -- 命令行模式补全配置
    cmp.setup.cmdline(':', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = 'path' }, -- 路径补全
      }, {
        { name = 'cmdline' }, -- 命令补全
      })
    })

    -- 搜索模式补全配置（如 / 和 ?）
    cmp.setup.cmdline({ '/', '?' }, {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = 'buffer' } -- 缓冲区内容补全
      }
    })
  end,
}
