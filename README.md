# Dadoot language support plugin
# About project
Some neat tools for dadoot markup language in neovim
text editor. Most of functionality requires 
treesitter parser for dadoot to be installed.

## Instalation

* 📦 mini.deps
    ```lua
    add({
        source='zzu1u/dadoot.nvim',
        depends = {
            'nvim-treesitter/nvim-treesitter'
        }
    })
    require('dadoot').setup()
    ```

    Don't forget to run `:TSInstall dadoot`

