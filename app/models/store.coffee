`import Ember from 'ember'`

cache = {}

Store = Ember.Object.extend
  # @param name Name of object you want (ie, subreddit)
  # @param id Id of object you want (ie, railsjobs)
  find: (name, id) ->
    if cache[name] && cache[name][id]
      return cache[name][id]

    adapter = @container.lookup "adapter:#{name}"
    adapter.find(name, id).then (record) ->
      cache[name] = cache[name] || {}
      cache[name][id] = record
      record


`export default Store`
