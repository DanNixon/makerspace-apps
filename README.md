# Maker Space apps

The stuff I run on-premise at [Maker Space](https://www.makerspace.org.uk/).

## Deploy

- Install Ubuntu Server
- Install Tailscale
- Install K3s: `curl -sfL https://get.k3s.io | sh -s - --disable=traefik`
- Add Tailscale IP to kubeapi server: `systemctl edit --full k3s.service` and add `--tls-san=100.x.y.z`
- Get kubeconfig and set Tailscale IP: `sudo cat /etc/rancher/k3s/k3s.yaml`
- `./kapp_namespace.sh`
- Deploy apps
