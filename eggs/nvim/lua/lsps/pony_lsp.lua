local configs = require'lspconfig.configs'
local util = require'lspconfig.util'

if not configs.pony_lsp then
    configs.pony_lsp = {
        default_config = {
            cmd = { 'pony-lsp' },
            filetypes = { 'pony' },
            single_file_support = { false },
            root_dir = function(pattern)
            local cwd = vim.loop.cwd()
            local root = util.root_pattern('corral.json', '.git')(pattern)
            -- no root found by common patterns, use cwd
            if not root then
                return cwd
            end

            -- prefer cwd if root is a descendant
            return util.path.is_descendant(cwd, root) and cwd or root
            end,
        },
        docs = {
            description = [[
https://github.com/ponylang/pony-language-server

Usage:

```lua
require'lspconfig'.pony_language_server.setup{}
```
            ]],
            default_config = [[root_pattern('corral.json', '.git')]],
        },
    }
end