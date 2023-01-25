import * as kubernetes from "@pulumi/kubernetes";
import { kubeconfig } from "../digitalocean/kube-cluster";

export const provider = new kubernetes.Provider("k8s", {
  kubeconfig: kubeconfig.get(),
});
