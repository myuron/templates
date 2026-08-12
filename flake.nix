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
          go = {
            path = ./go;
          };
        };
      };
    };
}
