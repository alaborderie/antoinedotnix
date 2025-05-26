{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    discord
    nodejs
    rustup
    go
    gopls
    nil
    nixd
    vtsls
    moonlight-qt
    ankama-launcher
  ];
}
