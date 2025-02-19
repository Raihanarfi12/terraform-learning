resource "docker_container" "mariadb" {
    name = "db"
    hostname = "db"
    image = docker_image.mariadb-image.name
    networks_advanced {
        name = docker_network.private_network.name
    }
    ports {
        internal = 3306
        external = 3306
        ip = "0.0.0.0"
    }
    labels {
        label = "challenge"
        value = "second"
    }
    env = [
        "MYSQL_ROOT_PASSWORD=1234",
        "MYSQL_DATABASE=simple-website"
    ]
    volumes {
        volume_name = docker_volume.mariadb_volume.name
        container_path = "/var/lib/mysql"
    }
}