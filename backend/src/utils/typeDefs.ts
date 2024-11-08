export const typeDefs = `#graphql
    type Movie @node {
        title: String
        tagline: String
        released: Int
        directed: [Person!]! @relationship(type: "DIRECTED", direction: IN)
        cast: [Person!]! @relationship(type: "ACTED_IN", direction: IN)
    }

    type Person @node {
        name: String
        born: Int
        acted: [Movie!]! @relationship(type: "ACTED_IN", direction: OUT)
        directed: [Movie!]! @relationship(type: "DIRECTED", direction: OUT)
        Produced: [Movie!]! @relationship(type: "PRODUCED", direction: OUT)
        wrote: [Movie!]! @relationship(type: "WROTE", direction: OUT)
    }
`;
