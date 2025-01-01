# Docker V2ray Setup

Use v2ray to access the network as a VPN.

## **Enviroments**

Required environment variables.

- **V2RAY_PORT**: The port that V2Ray will listen on for incoming connections.
- **V2RAY_ID**: Universally Unique Identifier `xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx`.
- **V2RAY_PATH**: WebSocket Path.
- **V2RAY_HOST**: The "Host" header used in WebSocket requests.

## User Manual

### Build Docker Image

```bash
docker build -t v2ray-image .
```

### Start docker container

```bash
docker run -d \
  -e V2RAY_PORT=80 \
  -e V2RAY_ID=cdfd3020-750a-4f52-9919-1bcf0f5c469e \
  -e V2RAY_PATH=/v2ray \
  -e V2RAY_HOST=m.example.com \
  --name v2ray-container \
  v2ray-image
```

