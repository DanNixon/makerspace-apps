{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };

  outputs = {nixpkgs, ...}: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {inherit system;};
  in {
    devShells.${system}.default = pkgs.mkShell {
      packages = with pkgs; [
        # Deployment tools
        kapp

        # Manifest rendering tools
        kubernetes-helm

        # Secret management
        sops
        vals
        apacheHttpd # for `htpasswd` command

        # Code formatting tools
        alejandra
        treefmt
        mdl

        # Application tools
        influxdb2-cli
      ];

      env.KAPP_NAMESPACE = "kapp";
    };
  };
}
