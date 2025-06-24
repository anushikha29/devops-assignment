# 🚀 DevOps Assignment – Nginx Reverse Proxy + Docker
[![Run with Docker Compose](https://img.shields.io/badge/Docker--Compose-Up-blue?logo=docker)](#build--run-everything)

This project sets up a Docker Compose-based system with an Nginx reverse proxy that routes traffic to two backend services (Go and Python), all accessible via a single port (`localhost:8080`).

---

## 🧩 Architecture

| Component  | Tech Stack     | URL Prefix   | Port Inside Container |
|------------|----------------|--------------|------------------------|
| Service 1  | Golang         | `/service1`  | 8001                   |
| Service 2  | Python + Flask | `/service2`  | 8002                   |
| Nginx Proxy| Nginx (Docker) | -            | 80                    |

All services run on a single port using Nginx reverse proxy:  
**Access them at `http://localhost:8080/service1/` or `/service2/`**

---

## 📦 Setup Instructions

### 🔧 Prerequisites
- Docker
- Docker Compose

### Build & Run Everything
```bash
docker compose up --build
