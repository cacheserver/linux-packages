group "default" {
  targets = ["alpine", "ubuntu"]
}

target "alpine" {
  context = "alpine"
  tags = [ "localhost:5000/alpine:example" ]
}

target "ubuntu" {
  context = "ubuntu"
  tags = [ "localhost:5000/ubuntu:example" ]
}
