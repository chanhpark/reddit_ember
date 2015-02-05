`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @resource('subreddit', { path: '/r/:subreddit_id' })

`export default Router`
