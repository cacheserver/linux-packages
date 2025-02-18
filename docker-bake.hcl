target "default" {}
target "dev" {
    tags = [
        "chocolatefrappe/linux-package-cache-proxy:dev"
    ]
}
