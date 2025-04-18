-- ~/.config/nvim/lua/plugins.lua

return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8', -- Вы можете использовать tag или branch
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('telescope').setup {
                --defaults = {
                    -- Тут можно указать настройки по умолчанию для Telescope
                --},
            }

            -- Привязка клавиш для вызова Telescope
            local function map(mode, lhs, rhs, opts)
                opts = opts or {}
                vim.keymap.set(mode, lhs, rhs, opts)
            end

            map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { noremap = true, silent = true })
            map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { noremap = true, silent = true })
            map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { noremap = true, silent = true })
            map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { noremap = true, silent = true })
        end,
    },
}
