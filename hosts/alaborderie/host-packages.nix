{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    audacity
    discord
    obs-studio
    zed-editor-fhs
    nodejs
    rustup
    go
    gopls
    nil
    nixd
    vtsls
  ];
}
