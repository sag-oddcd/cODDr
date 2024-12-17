return {
require('lazy').setup({
    'b0o/incline.nvim',
    config = function()
        require('incline').setup({
            debounce_threshold = {
                falling = 50,
                rising = 10,
            },
            hide_cursorline = false,
            focused_win = false,
            only_win = false,
            ignore_buftypes = { "special" },
            filetypes = { "floatingwins" },
            render = function(props)
                local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ':t')
                local modified = vim.b[props.buf].modified and ' [+]' or ''
                return filename .. modified
            end,
        })
    end,
})
}
