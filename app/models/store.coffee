`import Ember from 'ember'`

Store = Ember.Object.extend
  find: (name, id) ->
    adapter = @container.lookup "adapter:#{name}"
    adapter.find(name, id)


`export default Store`
