# shell.nix
{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/nixos-25.05.tar.gz") {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.pandoc
    pkgs.tectonic
    pkgs.librsvg
  ];

  shellHook = ''
    echo "Build environment ready."
    echo "  pandoc:   $(pandoc --version | head -1)"
    echo "  tectonic: $(tectonic --version)"
    echo ""
    echo "Run 'make pdf' or 'make html' to build."
  '';
}
