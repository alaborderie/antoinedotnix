{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    discord
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
