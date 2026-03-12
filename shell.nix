# shell.nix
{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/nixos-25.05.tar.gz") {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.pandoc
    pkgs.tectonic
    pkgs.librsvg
  ];

  shellHook = ''
    echo "Build environment ready." >&2
    echo "  pandoc:   $(pandoc --version | head -1)" >&2
    echo "  tectonic: $(tectonic --version)" >&2
    echo "" >&2
    echo "Run 'make pdf' or 'make html' to build." >&2
  '';
}
