import "dotenv/config";

import * as digitalocean from "@pulumi/digitalocean";
import * as cloudflare from "@pulumi/cloudflare";
import { MAIN_DOMAIN } from "./consts";

import "./digitalocean/kube-cluster";
