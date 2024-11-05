import { ApolloServer } from "@apollo/server";
import { startStandaloneServer } from "@apollo/server/standalone";

const typeDefs = `#graphql
  type Query {
    test: String
  }
`;
async function startServer() {
  const server = new ApolloServer({
    typeDefs,
    resolvers: {
      Query: {
        test: () => "Hello World!",
      },
    },
  });

  const { url } = await startStandaloneServer(server, {
    listen: { port: 4000 },
  });

  console.log(`🚀 Server ready at ${url}`);
}

startServer();
