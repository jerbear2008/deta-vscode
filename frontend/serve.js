const fastify = require('fastify')()
const fastifyStatic = require('@fastify/static')

fastify.register(require('@fastify/static'), {
  root: __dirname,
})

fastify.listen({ port: process.env.PORT })