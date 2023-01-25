import * as digitalocean from "@pulumi/digitalocean";
import * as kubernetes from "@pulumi/kubernetes";

const KUBERNETES_VERSION = "1.25.4-do.0";
const DROPLET_SIZE = digitalocean.DropletSlug.DropletS1VCPU2GB;

console.log(digitalocean.DropletSlug.Droplet1GB);

const cluster = new digitalocean.KubernetesCluster("main-cluster", {
  region: digitalocean.Region.AMS3,
  version: KUBERNETES_VERSION,
  nodePool: {
    name: "default",
    size: DROPLET_SIZE,
    minNodes: 1,
    maxNodes: 3,
    autoScale: true,
  },
});

export const kubeconfig = cluster.kubeConfigs[0].rawConfig;
