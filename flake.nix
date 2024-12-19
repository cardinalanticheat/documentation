{
  description = "bachelor-arbeit";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    utils.url = "github:numtide/flake-utils";
  };

  outputs =
    { nixpkgs, utils, ... }:

    utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };
      in
      {
        devShells.default = pkgs.mkShell {
            buildInputs = with pkgs; [
                nodejs_22
                nodePackages.npm
                prefetch-npm-deps
            ];

            shellHook = ''
            npm install retypeapp
            ./node_modules/retypeapp/platforms/linux-x64/retype  start
            '';
        };
      }
    );
}