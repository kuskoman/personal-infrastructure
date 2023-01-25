import * as pulumi from "@pulumi/pulumi";

const config = new pulumi.Config();

export const MAIN_DOMAIN = config.require("main_domain");
