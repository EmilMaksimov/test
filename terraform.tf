provider "google" {
  credentials = "${file("~/emil-openshift-95bd77a994c1.json")}"
  project     = "${var.project}"
  region      = "${var.region}"
}

data "template_file" "dock-kube" {
  template = "${file("./helper_scripts/setup-docker-kubetools.sh")}"
}