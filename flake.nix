{
  description = "dev-shell";
  outputs =
    { self, nixpkgs }:
    {
      devShell.x86_64-linux =
        let
          pkgs = nixpkgs.legacyPackages.x86_64-linux;
        in
        pkgs.mkShell {
          buildInputs = [
            pkgs.automake
            pkgs.flex
          ];
          shellHook = ''
            echo hi
          '';
        };
    };
}
