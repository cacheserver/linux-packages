## About
A simple Linux Package Repositories cache server using NGINX `proxy_cache` module.

> WIP

## Supported Repositories

| Distro                   | Path       | Repository                               |
| ------------------------ | ---------- | ---------------------------------------- |
| Debian                   | `/debian`  | `http://deb.debian.org/debian/`          |
| Debian                   | `/debsec`  | `http://deb.debian.org/debian-security/` |
| Raspberry Pi             | `/raspi`   | `http://archive.raspberrypi.com/debian/` |
| Ubuntu                   | `/ubuntu`  | `http://us.archive.ubuntu.com/ubuntu/`   |
| Ubuntu                   | `/ubusec`  | `http://security.ubuntu.com/ubuntu/`     |
| Kali                     | `/kali`    | `http://http.kali.org/kali/`             |
| Proxmox (non-enterprise) | `/proxmox` | `http://download.proxmox.com/debian/`    |
| Alpine Linux             | `/alpine`  | `https://dl-cdn.alpinelinux.org/alpine/` |

## References
https://docs.nginx.com/nginx/admin-guide/content-cache/content-caching/
https://www.apalrd.net/posts/2024/cluster_debcache/
