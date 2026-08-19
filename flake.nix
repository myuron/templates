{
  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs =
    inputs@{
      self,
      flake-parts,
    }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      flake = {
        templates = {
          basic = {
            path = ./basic;
          };
          go = {
            path = ./go;
          };
          rust = {
            path = ./rust;
          };
        };
      };
    };
}
