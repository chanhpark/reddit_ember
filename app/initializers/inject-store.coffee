`import Store from 'reddit_ember/models/store'`

# Takes two parameters: container and app
initialize = (container, app) ->
  # app.register 'route', 'foo', 'service:foo'
  app.register('store:main', Store)
  app.inject('route', 'store', 'store:main')
  app.inject('controller', 'store', 'store:main')

InjectStoreInitializer =
  name: 'inject-store'
  initialize: initialize

`export {initialize}`
`export default InjectStoreInitializer`
