# Portainer
resource "docker_volume" "portainer_data" {
  name = "portainer_data"
}

resource "docker_container" "portainer" {
  name  = "portainer"
  image = "portainer/portainer-ce:latest"
  restart = "unless-stopped"

  ports = [
    {
      internal = 9000
      external = 9000
    }
  ]

  volumes = [
    {
      volume_name    = docker_volume.portainer_data.name
      container_path = "/data"
    },
    {
      host_path      = "/var/run/docker.sock"
      container_path = "/var/run/docker.sock"
    }
  ]
}

# Gitea

# Definir la red 'gitea'
resource "docker_network" "gitea" {
  name     = "gitea"
  internal = false
}

# Crear el contenedor 'gitea'
resource "docker_container" "gitea" {
  name  = "gitea"
  image = "docker.io/gitea/gitea:1.23.1"
  restart = "always"

  # Variables de entorno
  env = [
    "USER_UID=1000",
    "USER_GID=1000"
  ]

  # Conectar el contenedor a la red 'gitea'
  networks = [docker_network.gitea.name]

  # Volúmenes
  volumes = [
    {
      host_path      = "/srv/devtanto/unacarpeta"
      container_path = "/data"
    },
    {
      host_path      = "/etc/timezone"
      container_path = "/etc/timezone"
      read_only      = true
    },
    {
      host_path      = "/etc/localtime"
      container_path = "/etc/localtime"
      read_only      = true
    }
  ]

  # Definir los puertos
  ports = [
    {
      internal = 3000
      external = 3000
    },
    {
      internal = 22
      external = 222
    }
  ]
}
