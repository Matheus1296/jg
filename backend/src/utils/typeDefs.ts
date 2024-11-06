export const typeDefs = `#graphql
    type Movie @node {
        title: String
        tagline: String
        released: Int
        actors: [Person!]! @relationship(type: "ACTED_IN", direction: IN)
    }

    type Person @node {
        name: String
        born: Int
        movies: [Movie!]! @relationship(type: "ACTED_IN", direction: OUT)
    }
`;
