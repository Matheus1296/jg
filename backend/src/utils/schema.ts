import { Neo4jGraphQL } from "@neo4j/graphql";
import { typeDefs } from "./typeDefs";
import { driver } from "./driver";
import { GraphQLSchema } from "graphql";

const neoSchema = new Neo4jGraphQL({ typeDefs, driver });

const createSchema = async (): Promise<GraphQLSchema | null> => {
  try {
    return neoSchema.getSchema();
  } catch (e) {
    console.log(e);
  }
  return null;
};

export const schemaPromise = createSchema();
