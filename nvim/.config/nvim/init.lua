-- Basic settings
vim.g.clipboard = {
  name = "unnamedplus",
  copy = {
    ["+"] = "wl-copy",
    ["*"] = "wl-copy",
  },
  paste = {
    ["+"] = "wl-paste",
    ["*"] = "wl-paste",
  }
}

vim.opt.number = true
vim.opt.relativenumber = true
vim.api.nvim_set_keymap('n', '<leader>f', ':lua vim.lsp.buf.formatting()<CR>', { noremap = true, silent = true })


-- Setup Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Install plugins
require('lazy').setup({
  -- Mason for LSP
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',
  
  -- nvim-cmp for auto-completion
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  'catppuccin/nvim',
  'jose-elias-alvarez/null-ls.nvim',
})

-- Mason setup
require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = { "lua_ls" },  -- Add the LSPs you want to install here
})
require('null-ls').setup({
  ensure_installed = { "stylua" },  -- Add the formatters you want to install here
})

local lspconfig = require('lspconfig')

-- Example: Setup for Lua language server
lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = {
        globals = {'vim'}
      }
    }
  }
}


-- null-ls setup
local null_ls = require('null-ls')
null_ls.setup({
  sources = {
    null_ls.builtins.formatting.stylua, -- Example for Lua
    -- Add other formatters here
  },
  on_attach = function(client)
    if client.resolved_capabilities.document_formatting then
      vim.cmd([[
        augroup LspFormatting
          autocmd! * <buffer>
          autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
        augroup END
      ]])
    end
  end,
})


-- nvim-cmp setup
local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    }),
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'buffer' },
    { name = 'path' },
  },
})

-- theme
local catp = require("catppuccin")
catp.setup {
                    flavour = "mocha", -- latte, frappe, macchiato, mocha
                    background = { -- :h background
                        light = "latte",
                        dark = "mocha"
                    },
                    transparent_background = true, -- disables setting the background color.
                    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
                    term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
                    dim_inactive = {
                        enabled = false, -- dims the background color of inactive window
                        shade = "dark",
                        percentage = 0.15 -- percentage of the shade to apply to the inactive window
                    },
                    no_italic = false, -- Force no italic
                    no_bold = false, -- Force no bold
                    no_underline = false, -- Force no underline
                    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
                        comments = {"italic"}, -- Change the style of comments
                        conditionals = {"italic"},
                        loops = {},
                        functions = {},
                        keywords = {},
                        strings = {},
                        variables = {},
                        numbers = {},
                        booleans = {},
                        properties = {},
                        types = {},
                        operators = {}
                    },
                    color_overrides = {},
                    custom_highlights = {},
                    integrations = {
                        cmp = true,
                        gitsigns = true,
                        nvimtree = true,
                        neotree = true,
                        treesitter = true,
                        mason = true,
                        telescope = true,
                        notify = true,
                        mini = {enabled = true, indentscope_color = ""},
                        native_lsp = {
                            enabled = true,
                            virtual_text = {
                                errors = {"italic"},
                                hints = {"italic"},
                                warnings = {"italic"},
                                information = {"italic"}
                            },
                            underlines = {
                                errors = {"underline"},
                                hints = {"underline"},
                                warnings = {"underline"},
                                information = {"underline"}
                            },
                            inlay_hints = {background = true}
                        }
                    }
	    }





