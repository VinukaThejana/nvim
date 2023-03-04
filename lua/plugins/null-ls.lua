return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "BufReadPre",
    dependencies = { "mason.nvim" },
    opts = function()
      local nls = require("null-ls")
      return {
        sources = {
          -- Lua
          nls.builtins.formatting.stylua.with({
            filetypes = { "lua" },
          }),

          -- Webdev
          nls.builtins.diagnostics.tsc.with({
            filetypes = { "typescript", "typescriptreact" },
          }),
          nls.builtins.diagnostics.eslint_d.with({
            filetypes = { "typescript", "typescriptreact" },
          }),
          nls.builtins.formatting.dprint.with({
            filetypes = {
              "typescript",
              "typescriptreact",
              "json",
            },
          }),

          -- Tailwindcss
          nls.builtins.formatting.rustywind.with({
            "typescript",
            "typescriptreact",
            "vue",
            "svelte",
            "html",
          }),

          -- YAML config files
          nls.builtins.diagnostics.cfn_lint.with({
            filetypes = { "yaml" },
          }),
          nls.builtins.formatting.yamlfmt.with({
            filetypes = { "yaml" },
          }),

          -- Golang
          nls.builtins.diagnostics.revive.with({
            filetypes = { "go" },
          }),
          nls.builtins.formatting.gofumpt.with({
            filetypes = { "go" },
          }),
          nls.builtins.formatting.goimports.with({
            filetypes = { "go" },
          }),
          nls.builtins.code_actions.gomodifytags.with({
            filetypes = { "go" },
          }),

          -- CPP/C

          -- Mardown
          nls.builtins.formatting.cbfmt.with({
            filetypes = { "markdown" },
          }),
          nls.builtins.formatting.markdown_toc.with({
            filetypes = { "markdown" },
          }),
          nls.builtins.formatting.mdformat.with({
            filetypes = { "markdown" },
          }),

          -- Rust
          nls.builtins.formatting.rustfmt.with({
            filetypes = { "rust" },
          }),

          -- Github Actions
          nls.builtins.diagnostics.actionlint.with({
            filetypes = { "yaml" },
          }),

          -- Protocol buffers
          nls.builtins.diagnostics.protoc_gen_lint.with({
            filetypes = { "proto" },
          }),
          nls.builtins.formatting.buf.with({
            filetypes = { "proto" },
          }),
        },
      }
    end,
  },
}
