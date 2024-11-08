import { ApolloServer } from "@apollo/server";
import { startStandaloneServer } from "@apollo/server/standalone";
import { schemaPromise } from "./utils/schema";

async function startServer() {
  const schema = await schemaPromise;

  if (!schema) {
    throw new Error("Could not create schema");
  }

  const server = new ApolloServer({
    schema,
  });

  const { url } = await startStandaloneServer(server, {
    listen: { port: 4000, host: "0.0.0.0" },
  });

  console.log(`🚀 Server ready at ${url}`);
}

startServer();
