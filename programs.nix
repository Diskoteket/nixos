{ config, pkgs, ... }:

{

   nixpkgs.config.permittedInsecurePackages = [
     "electron-25.9.0" # For Obsidian...
   ];

  home.packages = with pkgs; [
    # Productivity etc
    obsidian

    # Cli tools
    lsd
    bat

    # Work tools
    #_1password-gui
    vagrant
    terraform
    #awscli2
    #aws-sam-cli
    podman
    podman-desktop 
    #neovim
  ];

}
