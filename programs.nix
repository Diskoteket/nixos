{ pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "Tim Wetterek";
    userEmail = "tim@wetterek.se";
  };

  programs.neovim = {
    enable = true;
    vimAlias = true;
    extraConfig = ''
      set number relativenumber
      syntax enable
    '';
    plugins = with pkgs.vimPlugins; [
      telescope-nvim
      vim-commentary
      undotree
      mason-nvim
      mason-lspconfig-nvim
      nvim-lspconfig 
#      python-syntax
    ];
  };
}
