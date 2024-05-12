{
  outputs = {self}: {
      overlays.default = final: prev: {
        gojasm = prev.callPackage ./gojasm.nix { };
      };
  };
}
