{
  # Git Configuration ( For Pulling Software Repos )
  gitUsername = "Antoine Laborderie";
  gitEmail = "antoine.laborderie@gmail.com";

  # Hyprland Settings
  extraMonitorSettings = "
    monitor=eDP-1,2256x1504@60.0,2336x1600,1
    monitor=DP-4,3840x1600@144.0,0x0,auto
  ";

  # Waybar Settings
  clock24h = true;

  # Program Options
  browser = "zen"; # Set Default Browser (Zen Browser)
  terminal = "ghostty"; # Set Default System Terminal
  keyboardLayout = "us";
  consoleKeyMap = "us";

  # For Nvidia Prime support
  intelID = "PCI:1:0:0";
  nvidiaID = "PCI:0:2:0";

  # Enable NFS
  enableNFS = true;

  # Enable Printing Support
  printEnable = true;

  # Set Stylix Image
  stylixImage = ../../wallpapers/beautifulmountainscape.jpg;

  # Set Waybar
  # Includes alternates such as waybar-curved.nix & waybar-ddubs.nix
  waybarChoice = ../../modules/home/waybar/waybar-ddubs.nix;

  # Set Animation style
  # Available options are:
  # animations-def.nix  (default)
  # animations-end4.nix (end-4 project)
  # animations-dynamic.nix (ml4w project)
  animChoice = ../../modules/home/hyprland/animations-end4.nix;

  # Enable Thunar GUI File Manager
  thunarEnable = true;
}
