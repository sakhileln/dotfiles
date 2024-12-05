vim.defer_fn(function()
  pcall(require, "impatient")
end, 0)

require "core"
require "core.options"

-- setup packer + plugins
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  print("Cloning packer ..")
  fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
end

vim.cmd("packadd packer.nvim")

-- Ensure that plugins.lua is loaded correctly
require "plugins"

-- Sync plugins if installed for the first time
vim.cmd("PackerSync")

-- Install binaries from mason.nvim & tsparsers
vim.api.nvim_create_autocmd("User", {
  pattern = "PackerComplete",
  callback = function()
    vim.cmd("bw | silent! MasonInstallAll") -- close packer window
    require("packer").loader("nvim-treesitter")
  end,
})

pcall(require, "custom")

require("core.utils").load_mappings()

