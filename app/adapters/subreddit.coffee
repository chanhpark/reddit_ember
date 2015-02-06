`import Ember from 'ember'`
`import ajax from 'ic-ajax'`

SubredditAdapter = Ember.Object.extend
  find:  (name, id) ->
    # name:  subreddit
    # id: aww

    ajax("http://www.reddit.com/r/#{id}.json").then( (result) ->
      result.data.children.map (c)->
        id: c.id
        title: c.data.title
        domain: c.data.domain
        url: c.data.url
    )

`export default SubredditAdapter`
