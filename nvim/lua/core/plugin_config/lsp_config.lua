require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {"lua_ls", "clangd"}
})
local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

-- autopairs <CR> mapping for cmp
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)

local utils = require('lspconfig/util')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          [vim.fn.expand "$VIMRUNTIME/lua"] = true,
          [vim.fn.stdpath "config" .. "/lua"] = true,
        },
      },
    },
  }
}

require("lspconfig").clangd.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}
require("lspconfig").pyright.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "off"
      }
    }
  }
}
require("lspconfig").hls.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}
require('lspconfig').rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"rust"},
  root_dir = utils.root_pattern('Cargo.toml'),
  settings = {
    ['rust_analyzer'] = {
      cargo = {
        allFeatures = true,
      },
      checkOnSave = {
          enable = true,
          command = "clippy"
      },
      procMacro = {
          enable = true
      },
    }
  }
})
require('lspconfig').tsserver.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
