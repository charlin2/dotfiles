-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Detect Helm template files and set filetype to gotmpl
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "*/templates/*.yaml", "*/templates/*.tpl", "*.gotmpl" },
  callback = function()
    vim.bo.filetype = "gotmpl"
  end,
})

-- Also detect helm chart files
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "*/charts/*/templates/*.yaml", "helmfile.yaml" },
  callback = function()
    vim.bo.filetype = "gotmpl"
  end,
})

-- Re-sign treesitter parsers on startup to fix macOS code signature issues
-- This prevents crashes when loading parsers with invalid linker-signed signatures
if vim.fn.has("mac") == 1 then
  vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
      local parser_dir = vim.fn.stdpath("data") .. "/site/parser"
      vim.fn.jobstart('for f in "' .. parser_dir .. '"/*.so; do codesign --force --sign - "$f" 2>/dev/null; done', {
        detach = true,
      })
    end,
  })
end
