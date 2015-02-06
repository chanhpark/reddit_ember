`import Ember from 'ember'`
`import { initialize } from 'reddit_ember/initializers/inject-store'`

container = null
application = null

module 'InjectStoreInitializer',
  setup: ->
    Ember.run ->
      container = new Ember.Container()
      application = Ember.Application.create()
      application.deferReadiness()

# Replace this with your real tests.
test 'it works', ->
  initialize container, application

  # you would normally confirm the results of the initializer here
  ok true
