return {
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        config = function()
           local wk = require("which-key") 
           wk.register({
            ["<leader>f"] = {
              name = "+file/find",
              e = { "<cmd>NeoTreeFocus<cr>", "Open File Explorer"},
              f = { "<cmd>Telescope find_files<cr>", "Find File" },
              r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
              n = { "<cmd>enew<cr>", "New File" },
              g = { "<cmd>Telescope live_grep<cr>", "Grep in Files"},
              b = { "<cmd>Telescope buffers<cr>", "Find in Buffer"}
            },
          })
          wk.register({
            ["<leader>t"] = {
                name = "+tab/term",
                -- t = { "see core.lua", "BufferLine Pick Tabs"},
                -- f = { "see core.lua", "ToggleTerm Open/Close Float Terminal"},
                -- b = { "see core.lua", "ToggleTerm Open/Close Bottom Terminal"},
            } 
          })
          wk.register({
            ["<leader>g"] = {
                name = "+git",
                g = { ":Neotree position=float source=git_status action=show toggle=true<CR>", "Open Git"},
            } 
          })
          wk.register({
            ["<leader>d"] = {
                name = "+diff",
                -- c = { "see core.lua", "Git Diff Open"},
                -- f = { "see core.lua", "Git Diff Open"},
            } 
          })
          wk.register({
            ["<leader>w"] = {
                name = "+workspace",
                -- a = { "see lspconfig", "Add Workspace Folder"},
                -- r = { "see lspconfig", "Remove Workspace Folder"},
                -- l = { "see lspconfig", "List Workspace Folders"},
            } 
          })
          wk.register({
            ["<leader>l"] = {
                name = "+lsp",
                -- f = { "see custom_keys.lua", "Format"},
                -- r = { "see custom_keys.lua", "Rename"},
                -- a = { "see custom_keys.lua", "Code Action"},
            } 
          })
          wk.register({
            ["<leader>s"] = {
                name = "+session",
                -- s = { "see core.lua", "Switch Session"},
            } 
          })
        end,
        opts = {

        }
    }
}