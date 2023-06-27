local mason_status, mason = pcall(require, "mason")
if not mason_status then
  return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
  return
end

mason.setup()

mason_lspconfig.setup({
  ensure_installed = {
    "quick_lint_js",
    "vtsls",
    "jedi_language_server",
    "html",
    "cssls",
    "lua_ls",
    "pyright",
    "marksman",
    "sqlls",
    "yamlls",
    "dockerls",
    "jsonls"
  }
})
