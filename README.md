# Bastion server (Netbird + Zitadel + Traefik + Tinyproxy)

Initialize
```
NETBIRD_DOMAIN=example.com ~/getting-started-with-zitadel.sh
```

Stop 
```
NETBIRD_DOMAIN=example.com docker compose down
```

Start 
```
NETBIRD_DOMAIN=example.com docker compose up -d
```

Purge
```
bash purge.sh
```
