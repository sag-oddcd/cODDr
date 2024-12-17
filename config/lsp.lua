local lsp = vim.lsp

-- LSP signs
local signs = {
  Error = " ",
  Warn = " ",
  Hint = " ",
  Info = " "
}

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- Diagnostic config
lsp.handlers["textDocument/publishDiagnostics"] = lsp.with(
  lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    virtual_text = {
      spacing = 4,
      prefix = "●"
    },
    signs = true,
    update_in_insert = false,
  }
)

-- Hover config
lsp.handlers["textDocument/hover"] = lsp.with(
  lsp.handlers.hover, {
    border = "rounded",
  }
)

-- Signature help
lsp.handlers["textDocument/signatureHelp"] = lsp.with(
  lsp.handlers.signature_help, {
    border = "rounded",
  }
)
