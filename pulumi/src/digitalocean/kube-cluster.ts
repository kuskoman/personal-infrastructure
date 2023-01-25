import * as digitalocean from "@pulumi/digitalocean";

const KUBERNETES_VERSION = "1.25.4-do.0";
const DROPLET_SIZE = digitalocean.DropletSlug.DropletS1VCPU2GB;

export const cluster = new digitalocean.KubernetesCluster("main-cluster", {
  region: digitalocean.Region.AMS3,
  version: KUBERNETES_VERSION,
  nodePool: {
    name: "default",
    size: DROPLET_SIZE,
    minNodes: 1,
    maxNodes: 3,
    autoScale: true,
  },
  autoUpgrade: false,
});

export const kubeconfig = cluster.kubeConfigs[0]!.rawConfig;
