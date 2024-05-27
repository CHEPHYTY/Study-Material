This build for store data and study of Prisma ORM( Object-Relation Mapping)

Definition: 
- Prisma ORM is a an open-source object-relational mapping(ORM) framework for **Node.js** and **TypeScript**  that simplifies database access for developers. It Combines the benefits of traditional ORMs and query builders, and offers a type-safe and auto-generated query API. 
- Primsa ORM can be used as an alternative to writing plain SQL or other database access tools such as SQL query builders (like knex.js) or ORMs (like TypeORM and Sequelize).

Prerequisites for Prisma:
- Node Package Manager (NVM)
- Node.js
- Visual Studio Code
- Basics Of Database and ORMs
- Supabase of Remote Postgresql DB
Steps:
- Create a directory whatever the name will be `<exampleProject>`.
- Enter into the project  using cd or file manager etc. `cd <exampleProject>`.

```
npm install --global yarn

yarn --version

```

- Initialize node modules at the required directory.
```
yarn init
```
- add Typescript
```
yarn add typescript -D

npm --global i typescript

```
- create a **tsconfig.json** file
```
yarn tsc --init
```
- add Prisma ORM
```
npm install prisma --save-dev
```
- define database type
```
npx prisma init --datasource-provider postgresql
```
- add types/node package
```
yarn add @types/node
```
- install either Typewatch or nodemon package for realtime running of server on the local host/
```
yarn add nodemon
```

```
yarn add tsc-watch -D
```
- generate prisma file
```
npx prisma generate
```
- install graphql 
```
npm install @apollo/server graphql

yarn add @apollo/server graphql
```
- apply changes to the database
```
npx prisma migrate --name init

npx prisma migrate dev --name init

npx prisma migrate --name 

npx prisma migrate dev --name 
```