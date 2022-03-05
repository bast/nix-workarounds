{ pkgs ? import <nixpkgs> { config = { allowUnfree = true; }; } }:

with pkgs;

mkShell {
  shellHook =
    ''
    export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:${pkgs.lib.makeLibraryPath [ pkgs.libGL pkgs.xorg.libX11 xorg.libXcursor xorg.libXrandr xorg.libXi ]}"
    '';

  buildInputs = [
    cargo
    rustc

    libGL

    xorg.libX11
    xorg.libXcursor
    xorg.libXrandr
    xorg.libXi
  ];
}
