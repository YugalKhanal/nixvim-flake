{
  description = "NixVim flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    home-manager.url = "github:nix-community/home-manager";
  };

  outputs = { self, nixpkgs, home-manager, ... }: {
    homeModules = {
      nixvim = import ./modules/nixvim.nix;
    };
  };
}
