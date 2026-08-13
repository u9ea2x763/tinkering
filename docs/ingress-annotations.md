# Ingress Annotations Cheat Sheet

Quick reference for common nginx-ingress annotations I keep forgetting.

## Rate limiting

```yaml
nginx.ingress.kubernetes.io/limit-rps: "10"
nginx.ingress.kubernetes.io/limit-burst-multiplier: "5"
```

## Timeouts

```yaml
nginx.ingress.kubernetes.io/proxy-read-timeout: "30"
nginx.ingress.kubernetes.io/proxy-send-timeout: "30"
```

## Client body size

```yaml
nginx.ingress.kubernetes.io/proxy-body-size: 8m
```

## CORS

```yaml
nginx.ingress.kubernetes.io/enable-cors: "true"
nginx.ingress.kubernetes.io/cors-allow-origin: "https://example.com"
```

## Rewrite

```yaml
nginx.ingress.kubernetes.io/rewrite-target: /$2
nginx.ingress.kubernetes.io/use-regex: "true"
```

## Session affinity

```yaml
nginx.ingress.kubernetes.io/affinity: "cookie"
nginx.ingress.kubernetes.io/session-cookie-name: "route"
```

## Upstream keepalive

```yaml
nginx.ingress.kubernetes.io/upstream-keepalive-requests: "100"
nginx.ingress.kubernetes.io/upstream-keepalive-timeout: "60"
```