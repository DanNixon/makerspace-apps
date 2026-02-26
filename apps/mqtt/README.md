# MQTT broker

## Links

- [Container Image](https://hub.docker.com/_/eclipse-mosquitto/)

## How Tos

### Deploy

- Ensure credentials are correct in [`secrets.yml`](./src/secrets.yml)
- `./render.sh`
- `./deploy.sh mqtt`

### Upgrade

- Check latest [tag](https://hub.docker.com/_/eclipse-mosquitto/tags)
- Update tag in [`deployment.yml`](./src/k8s/deployment.yml)
- `./render.sh`
- `./deploy.sh mqtt`

### Data Import

N/A

### Data Export

N/A
