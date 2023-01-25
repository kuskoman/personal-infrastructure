import * as kubernetes from "@pulumi/kubernetes";
import { cluster } from "../digitalocean";
import { provider } from "./provider";

const namespaceName = "argocd";
const namespace = new kubernetes.core.v1.Namespace(
  namespaceName,
  { metadata: { name: namespaceName } },
  { provider }
);

const chart = "argo-cd";
const argocd = new kubernetes.helm.v3.Chart(
  chart,
  {
    namespace: namespace.metadata.name,
    chart,
    fetchOpts: { repo: "https://argoproj.github.io/argo-helm" },
    values: {
      installCRDs: true,
      server: {
        service: {
          type: "LoadBalancer",
        },
      },
    },
  },
  { provider, dependsOn: [cluster] }
);
