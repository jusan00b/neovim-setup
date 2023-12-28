return {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        local mason = require("mason")
    
        local mason_lspconfig = require("mason-lspconfig")
    
        local mason_tool_installer = require("mason-tool-installer")
    
        mason.setup({
            ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗",
            },
            },
        })
  
        mason_lspconfig.setup({
            -- list of servers for mason to install
            ensure_installed = {
            "clangd", -- C/C++
            "bashls", -- bashscript
            "cssls", -- css
            "dockerls", -- dockerls
            "html", -- html
            "jdtls", -- java
            "tsserver", -- javascript/typescript
            "lua_ls", -- lua
            "pyright", -- python
            "sqlls", -- sql


            },
            automatic_installation = true, 
        })
    
        mason_tool_installer.setup({
            ensure_installed = {
                "prettier",-- prettier formatter
                "stylua", -- lua formatter
                "isort", -- python formatter
                "black", -- python formatter
                "clang-format", -- C/C++ formatter
                "google-java-format", -- java formatter
                "shellcheck", -- shell formater & linter
                "sqlfluff", -- sql formatter & linter
                "eslint_d", -- js linter
                "pylint", -- python linter
                "cpplint", -- C/C++ linter
                "checkstyle", -- java linter
            },
        })
    end,
}