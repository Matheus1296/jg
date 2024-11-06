import neo4j from "neo4j-driver";

export const driver = neo4j.driver(
  "bolt://34.201.6.178",
  neo4j.auth.basic("neo4j", "fist-varactors-mineral")
);
