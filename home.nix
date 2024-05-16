{ config, pkgs, ... }: {
  
  home.stateVersion = "23.11";

  # Allow unfree pkgs
  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  # Import other configs
  imports = [
    ./zsh.nix
    ./packages.nix
    ./programs.nix
    ./dconf.nix 
  ];

}
