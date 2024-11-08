# Backend

Este é um projeto de API que utiliza o Node.js em conjunto com o banco de dados Neo4j para criar um serviço de recomendações.

## Tecnologias utilizadas

- **Node.js**: Plataforma de desenvolvimento de aplicações JavaScript do lado do servidor.
- **Neo4j**: Banco de dados orientado a grafos que será usado para armazenar os dados de filmes, atores e suas conexões.

## Configurando o banco de dados Neo4j

Você pode criar um banco de dados Neo4j gratuito usando o [Neo4j Sandbox](https://sandbox.neo4j.com/?usecase=recommendations). Após criar o banco de dados, anote as seguintes informações de conexão:

- **NEO4J_URI**: `bolt://54.81.208.216`
- **NEO4J_USERNAME**: `neo4j`
- **NEO4J_PASSWORD**: `electrolyte-worm-rig`
- **NEO4J_DATABASE**: `neo4j`

## Executando a API

1. Faça o clone deste repositório.
2. Instale as dependências com o comando `npm install`.
3. Crie um arquivo `.env` na raiz do projeto e adicione as seguintes configurações:

```
NEO4J_URI=bolt://54.81.208.216
NEO4J_USERNAME=neo4j
NEO4J_PASSWORD=electrolyte-worm-rig
NEO4J_DATABASE=neo4j
```

4. Inicie a API em modo de desenvolvimento com o comando `npm run dev`.
5. Acesse o aplicativo em `http://localhost:4000/` e você verá o playground do GraphQL.

## Exemplos de consultas

Aqui estão alguns exemplos de consultas GraphQL que você pode executar no playground:

### Consulta de pessoas

```graphql
query People {
  people {
    born
    name
    acted {
      title
    }
  }
}
```

### Consulta de filmes

```graphql
query Movies {
  movies {
    title
    cast {
      name
    }
  }
}
```

Essas consultas permitem recuperar informações sobre as pessoas e os filmes armazenados no banco de dados Neo4j.
