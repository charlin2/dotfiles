-- Set Go environment variables before LSP starts
-- This ensures gopls and Go tools inherit these environment variables

local ok, local_env = pcall(require, "local_env")
if ok and local_env.go then
  for key, value in pairs(local_env.go) do
    vim.env[key] = value
    -- Also set in shell environment for tools spawned by Neovim
    vim.fn.setenv(key, value)
  end
end
