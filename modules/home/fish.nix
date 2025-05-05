{
pkgs,
...
}: {
  programs.fish = {
    enable = true;
    shellInit = ''
      set fish_greeting # Disable greeting
      starship init fish | source
      thefuck --alias | source
    ''
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
        src = pkgs.fetchFromGithub {
          owner = "jorgebucaran";
          repo = "fisher";
        };
      }
      {
        name = "nvim.fish";
        src = pkgs.fetchFromGithub {
          owner = "jorgebucaran";
          repo = "nvim.fish";
        };
      }
      {
        name = "forgit";
        src = pkgs.fetchFromGithub {
          owner = "wfxr";
          repo = "forgit";
        };
      }
      {
        name = "plugin-git";
        src = pkgs.fetchFromGithub {
          owner = "jhillyerd";
          repo = "plugin-git";
        };
      }
    ];
  };
};
