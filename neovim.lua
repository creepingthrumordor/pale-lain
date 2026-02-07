return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#3b3b2b", -- Default background
                base01 = "#818165", -- Lighter background (status bars)
                base02 = "#3b3b2b", -- Selection background
                base03 = "#818165", -- Comments, invisibles
                base04 = "#ccc9b3", -- Dark foreground
                base05 = "#ccb3b3", -- Default foreground
                base06 = "#ccb3b3", -- Light foreground
                base07 = "#ccc9b3", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#cdb398", -- Variables, errors, red
                base09 = "#cdb498", -- Integers, constants, orange
                base0A = "#cdca98", -- Classes, types, yellow
                base0B = "#9fc6a3", -- Strings, green
                base0C = "#b4cd98", -- Support, regex, cyan
                base0D = "#cdb698", -- Functions, keywords, blue
                base0E = "#cdbb98", -- Keywords, storage, magenta
                base0F = "#cdca98", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
