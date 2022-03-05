{ pkgs ? import <nixpkgs> { config = { allowUnfree = true; }; } }:

with pkgs;

mkShell {
  shellHook =
    ''
    export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:${pkgs.lib.makeLibraryPath [ pkgs.alsaLib pkgs.udev pkgs.vulkan-loader ]}"
    '';

  buildInputs = [
    cargo
    rustc

    pkgconfig
    udev
    alsaLib
    lutris

    x11
    xorg.libXcursor
    xorg.libXrandr
    xorg.libXi

    vulkan-tools
    vulkan-headers
    vulkan-loader
    vulkan-validation-layers
  ];
}
