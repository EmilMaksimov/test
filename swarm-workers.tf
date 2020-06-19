resource "google_compute_instance" "workers" {
  count        = "${var.swarm_workers}"
  name         = "worker${count.index + 1}"
  machine_type = "${var.swarm_workers_instance_type}"
  zone         = "${var.zone}"
  can_ip_forward = true

  depends_on = ["google_compute_instance.managers"]

  boot_disk {
    initialize_params {
      image = "${var.image_name}"
      size  = 100
    }
  }
  

  metadata_startup_script = "${data.template_file.dock-kube.rendered}"

  metadata {
    sshKeys = "${var.ssh_user}:${file(var.ssh_pub_key_file)}"
  }

  network_interface {
    network       = "${google_compute_network.swarm.name}"
    access_config = {}
  }
}