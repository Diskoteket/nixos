{ config, lib, pkgs, ... }:

{
    programs.zsh = { 
      enable = true;
      initExtra = ''
       cheat () { curl "http://cheat.sh/$1"; } 
      '';
      shellAliases = { 
         ll = "ls -l";
	 ls = "lsd";
       };
      enableCompletion = true;
      enableAutosuggestions = true;

      oh-my-zsh = { 
        enable = true;
        plugins = [ "git" ];
        theme = "robbyrussell";
      };  
   };
}
