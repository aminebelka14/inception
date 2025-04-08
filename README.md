# Inception

**Inception** is a system administration project designed to deepen understanding of Docker by building a secure, modular infrastructure of containers from scratch. This project serves as an introduction to container orchestration, image creation, and service networking in a controlled, virtualized environment.

## 🧱 What's Inside

This project sets up a small-scale infrastructure using **Docker** and **docker-compose**. All services are containerized individually and configured to work together as a self-contained web stack.

### Mandatory Services

- **NGINX** — SSL-enabled reverse proxy (TLSv1.2/1.3 only)
- **WordPress** — Installed with PHP-FPM, served via NGINX
- **MariaDB** — Dedicated MySQL-compatible database backend
- **Volumes** — Persistent storage for:
  - Database content
  - WordPress site files
- **Docker network** — Custom bridge network linking all services
- **.env file** — Centralized environment variable management
- **Secrets** — Secure credentials handling (no plaintext passwords)

All services are built using custom `Dockerfile`s from the **latest minus one** stable Alpine or Debian base image, and launched using a `Makefile` wrapper.

### Prerequisites

- Virtual Machine (required)
- Docker & Docker Compose installed
- Domain name (e.g. `yourlogin.42.fr`) mapped to your VM’s local IP
