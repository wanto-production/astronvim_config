---@type LazySpec
return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("neo-tree").setup {
        filesystem = {
          follow_current_file = { enabled = true },
          use_libuv_file_watcher = true, -- ⬅️ ini bagian penting
          filtered_items = {
            visible = true, -- 👈 Menampilkan file tersembunyi
            hide_dotfiles = false, -- 👈 Menampilkan file diawali titik (dotfiles)
            hide_gitignored = false, -- 👈 Menampilkan file yang di-ignore Git
          },
        },
      }
    end,
  },
}
