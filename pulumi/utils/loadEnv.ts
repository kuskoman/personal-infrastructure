import "dotenv/config";

export const loadEnv = (name: string): string => {
  const env = loadOptionalEnv(name);
  if (!env) {
    throw new Error(
      `Environment variable ${name} is not optional and must be defined`
    );
  }
  return env;
};

export const loadOptionalEnv = (name: string) => {
  const env = process.env[name];
  return env;
};
