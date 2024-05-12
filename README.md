# Nixpkgs overlay for goJASM

This flake provides an overlay for nixpkgs to provide the [goJASM](https://github.com/blacknovatech/gojasm) compiler.

## Usage example
This example shows how this overlay may be used in a flake to make goJASM available in a dev shell. The example additionally uses [flake-utils](https://github.com/numtide/flake-utils).
```nix
{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    utils.url = "github:numtide/flake-utils";
    gojasm-flake.url = "github:twoneis/gojasm-flake";
  };

  outputs = { self, nixpkgs, utils, gojasm-flake, ... }: utils.lib.eachDefaultSystem (system:
    let
      pkgs = import nixpkgs {
        inherit system;
        overlays = [ gojasm-flake.overlays.default ];
      };
    in {
      devShells.default = pkgs.mkShell {
        packages = with pkgs; [
          gojasm
        ];
      };
    });
}
```
