{ pkgs, ... }:

{
  programs.nixvim = {
    plugins.web-devicons.enable = false;

    plugins.mini = {
      enable = true;
      mockDevIcons = true;
      modules.icons = {};
    };

    extraPlugins = [ pkgs.vimPlugins.mini-nvim ];
  };
}
