provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# Portainer
resource "docker_container" "portainer" {
  name  = "portainer"
  image = "portainer/portainer-ce:latest"
  ports {
    internal = 9000
    external = 9000
  }
  volumes {
    host_path      = "/var/run/docker.sock"
    container_path = "/var/run/docker.sock"
  }
}

# Homarr
resource "docker_container" "homarr" {
  name  = "homarr"
  image = "ghcr.io/ajnart/homarr:latest"
  ports {
    internal = 7575
    external = 7575
  }
  volumes {
    host_path      = "/docker/homarr/configs"
    container_path = "/app/data/configs"
  }
}

# AdGuard Home
resource "docker_container" "adguard" {
  name  = "adguard"
  image = "adguard/adguardhome:latest"
  ports {
    internal = 80
    external = 3000
  }
}

# Más aplicaciones Docker...
