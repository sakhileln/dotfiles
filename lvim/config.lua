
-- Lualine configuration
lvim.builtin.lualine.style = "default"
lvim.builtin.lualine.sections.lualine_c = { "diff" }

local components = require("lvim.core.lualine.components")
lvim.builtin.lualine.sections.lualine_a = { "mode" }
lvim.builtin.lualine.sections.lualine_y = {
    components.spaces,
    components.location
}


-- Automatically install Python syntax highlighting
lvim.builtin.treesitter.ensure_installed = {
    "python",
}

-- Setup formatting
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup { { name = "black" } }
lvim.format_on_save.enabled = true 
lvim.format_on_save.pattern = { "*.py" }

-- Setup linting
local linters = require "lvim.lsp.null-ls.linters"
linters.setup { { command = "flake8", filetypes = { "python" } } }

-- Binding for switching Python environment
lvim.builtin.which_key.mappings["C"] = {
    name = "Python",
    c = { "<cmd>lua require('swenv.api').pick_venv()<cr>", "Choose Env" },
}

-- Setup debug adapter
lvim.builtin.dap.active = true
local mason_path = vim.fn.glob(vim.fn.stdpath "data" .. "/mason/")
pcall(function()
    require("dap-python").setup(mason_path .. "packages/debugpy/venv/bin/python")
end)
