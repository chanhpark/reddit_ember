`import DS from 'ember-data'`
`import ajax from 'ic-ajax'`

SubredditAdapter = Ember.Object.extend
  find:  (name, id) ->
    # name:  subreddit
    # id: aww

    ajax("http://www.reddit.com/r/#{id}.json")

`export default SubredditAdapter`
