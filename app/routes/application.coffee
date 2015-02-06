`import Ember from 'ember'`

ApplicationRoute = Ember.Route.extend
  model: ->
    ['rails', 'railsjobs', 'git', 'emberjs']

`export default ApplicationRoute`
