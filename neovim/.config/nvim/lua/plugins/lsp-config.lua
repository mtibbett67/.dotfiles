return {
  {
    "mason-org/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "mason-org/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "html",
          "remark_ls",
          "marksman"
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.html.setup({})
      lspconfig.remark_ls.setup({})
      lspconfig.marksman.setup({})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
      vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, {})
      vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, {})
      vim.keymap.set("n", "[d", vim.diagnostic.goto_next, {})
      vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, {})
      vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, {})
      vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, {})
    end
  }
}
