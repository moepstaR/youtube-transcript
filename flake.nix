{
  description = "youtube-transcript";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = { nixpkgs, flake-utils, ... }: flake-utils.lib.eachDefaultSystem (system:
    let pkgs = import nixpkgs {
        inherit system;
      }; 
    in rec {
      devShell = pkgs.mkShell {
        buildInputs = [
          pkgs.nodejs_22
        ];
      };
    }
  );
}