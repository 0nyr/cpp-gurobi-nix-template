{
  description = "C++ development environment with Gurobi";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    flake-utils.url = github:numtide/flake-utils;
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          system = system; 
          config.allowUnfree = true; 
        };
      in
      {
        devShells.default = pkgs.mkShell {
          packages = [
            # C/C++ development
            pkgs.gcc
            pkgs.gnumake
            pkgs.gdb
            pkgs.valgrind

            pkgs.gurobi # Gurobi solver. Requires a license. Add it using command `grbgetkey <YOUR_LICENSE_KEY>`
          ];

          shellHook = ''
            export LD_LIBRARY_PATH=${pkgs.gurobi}/lib:$LD_LIBRARY_PATH
            export GUROBI_HOME=${pkgs.gurobi}
            export GUROBI_VERSION=$(basename $(ls -d ${pkgs.gurobi}) | sed 's/.*-\([0-9]\+\)\.\([0-9]\+\).*/\1\2/')
            echo "Welcome to your C++ development environment with Gurobi"
          '';
        };
      }
    );
}
