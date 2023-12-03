resource "docker_image" "nginx" {
  name = "nginx:alpine3.18-slim"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.name
  name = "docker-practice"
  ports {
    internal = 80
    external = 80
  }
}
