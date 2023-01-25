import * as pulumi from "@pulumi/pulumi";
import * as digitalocean from "@pulumi/digitalocean";
import * as cloudflare from "@pulumi/cloudflare";
import { MAIN_DOMAIN } from "./consts";

// Create a DigitalOcean resource (Domain)
const domain = new digitalocean.Domain("homepage", {
  name: MAIN_DOMAIN,
});

export const domainName = domain.name;
