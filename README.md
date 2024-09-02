# Gurobi & C++ on NixOs

A Gurobi project template for Nix / NixOs.

## Setup

~~`export NIXPKGS_ALLOW_UNFREE=1 & nix develop --impure`: Enter dev environment.~~ This is because package `gurobi` has unfree licence. > This has been directly modified in the `flake.nix` file. Now `nix develop` will work.