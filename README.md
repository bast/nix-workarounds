# nix-workarounds

Collecting various nix-shell workarounds.


### jax

```console
$ nix-shell -p python3 python3Packages.numpy python3Packages.jax python3Packages.jaxlib -I nixpkgs=https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz
```
