{
  programs.nixvim = {
    config = {
      plugins = {
        nvim-tree = {
          enable = true;
          settings = {
            filters = {
              dotfiles = false;
            };
            view = {
              side = "left";
            };
            git = {
              enable = true;
              ignore = false;
            };
          };
        };
        mini = {
          enable = true;
          mockDevicons = true;
        };
      }; 

      keymaps = [
        { mode = "n"; key = "<C-n>"; action = "<CMD>NvimTreeToggle<CR>"; options.desc = "Toggle NvimTree"; }
        { mode = "n"; key = "<leader>e"; action = "<CMD>NvimTreeFocus<CR>"; options.desc = "Focus on NvimTree"; }
      ];
    };
  };
}
