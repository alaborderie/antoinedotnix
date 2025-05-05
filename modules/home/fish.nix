{
pkgs,
profile,
...
}: {
  programs.fish = {
    enable = true;
    shellInit = ''
      set fish_greeting # Disable greeting
      starship init fish | source
      thefuck --alias | source
    '';
    shellAliases = {
      sv = "sudo nvim";
      fr = "nh os switch --hostname ${profile}";
      fu = "nh os switch --hostname ${profile} --update";
      ncg = "nix-collect-garbage --delete-old && sudo nix-collect-garbage -d && sudo /run/current-system/bin/switch-to-configuration boot";
      v = "nvim";
      cat = "bat";
      ls = "eza --icons";
      ll = "eza -lh --icons --grid --group-directories-first";
      la = "eza -lah --icons --grid --group-directories-first";
      ".." = "cd ..";
    };
    plugins = [
      {
        name = "fisher";
        src = pkgs.fetchFromGitHub {
          owner = "jorgebucaran";
          repo = "fisher";
          tag = "4.4.5";
          sha256 = "VC8LMjwIvF6oG8ZVtFQvo2mGdyAzQyluAGBoK8N2/QM=";
        };
      }
      {
        name = "nvm.fish";
        src = pkgs.fetchFromGitHub {
          owner = "jorgebucaran";
          repo = "nvm.fish";
          tag = "2.2.17";
          sha256 = "BNnoP9gLQuZQt/0SOOsZaYOexNN2K7PKWT/paS0BJJY=";
        };
      }
      {
        name = "forgit";
        src = pkgs.fetchFromGitHub {
          owner = "wfxr";
          repo = "forgit";
          tag = "25.05.0";
          sha256 = "U+MtgunPEmo/kv/lQI2BBi2WUBgt3wFkaUdfRzJWoGQ=";
        };
      }
      {
        name = "plugin-git";
        src = pkgs.fetchFromGitHub {
          owner = "jhillyerd";
          repo = "plugin-git";
          tag = "v0.3";
          sha256 = "p7vvwisu3mvVOE1DcALbzuGJqWBcE1h71UjaopGdxE0=";
        };
      }
    ];
  };
}
