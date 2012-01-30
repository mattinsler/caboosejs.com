module.exports = (config, next) ->
  config.http =
    enabled: true
    port: process.env.PORT || 4000

  next()
