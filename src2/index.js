const { ApolloServer } = require("apollo-server");

const typeDefs = `
  type Query {
    info: String!
  }
`;

const resolvers = {
  Query: {
    info: () => null,
  },
};

const server = new ApolloServer({
  typeDefs,
  resolvers,
});

server.listen().then(({ url }) => {
  console.log(`Server is running on ${url}`);
  console.log("Но как это помогает в определении API для сервера GraphQL? Каждая схема GraphQL имеет три специальных типа корня : Query, Mutationи Subscription. Корневые типы соответствуют трем типам операций, предлагаемым GraphQL: запросы, изменения и подписки. Поля этих корневых типов называются корневыми полями и определяют доступные операции API.")
});
