-- local function nvim_tree_mappings(bufnr)
--   local km = vim.keymap.set
--   local api = require "nvim-tree.api"

--   local function opts(desc)
--     return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
--   end

--   -- default mappings
--   api.config.mappings.default_on_attach(bufnr)

--   -- custom mappings
--   km('n', '<C-t>', api.tree.change_root_to_parent,        opts('Up'))
--   km('n', '?',     api.tree.toggle_help,                  opts('Help'))
--   km('n', '<leader>bb', api.tree.toggle, {desc = 'nvim-tree: Toggle Tree', nowait = true})
--   km('n', '<leader>bc', api.tree.close, {desc = 'nvim-tree: Close Tree', nowait = true})
--   km('n', '<leader>bf', api.tree.focus, {desc = 'nvim-tree: Focus Tree', nowait = true})

--   local FloatPreview = require("float-preview")
--   FloatPreview.attach_nvimtree(bufnr)
-- end
-- -- ({ path = "<args>", find_file = false, update_root = false, focus = true, })

-- -- pass to setup along with your other options
-- require("nvim-tree").setup {
--   ---
--   on_attach = nvim_tree_mappings,
--   ---
-- }

local km = vim.keymap.set

return {
  -- km('n', '<C-t>', )
    -- km('n', '<leader>1', '<Cmd>Neotree source=filesystem focus<CR>'),
    km('n', '<leader>1', '<Cmd>Neotree toggle<CR>'),


    -- km('n', '<leader>`', require('winshift.lib').window_picker(), {noremap=true}),

    km("n", "gpd", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", {noremap=true}),
    km("n", "gpt", "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>", {noremap=true}),
    km("n", "gpi", "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>", {noremap=true}),
    km("n", "gpD", "<cmd>lua require('goto-preview').goto_preview_declaration()<CR>", {noremap=true}),
    km("n", "gpc", "<cmd>lua require('goto-preview').close_all_win()<CR>", {noremap=true})
}
