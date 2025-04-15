{pkgs, ...}: {
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

  # env.KAPP_NAMESPACE = "kapp";
}
