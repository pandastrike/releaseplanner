{_} = require "lodash"

user1 =
  login: 'socinian'
  id: 1112767
  avatar_url: 'https://avatars.githubusercontent.com/u/1112767?v=2'
  gravatar_id: '28acffe6d86470a37def7cf36555352e'
  url: 'https://api.github.com/users/socinian'
  html_url: 'https://github.com/socinian'
  followers_url: 'https://api.github.com/users/socinian/followers'
  following_url: 'https://api.github.com/users/socinian/following{/other_user}'
  gists_url: 'https://api.github.com/users/socinian/gists{/gist_id}'
  starred_url: 'https://api.github.com/users/socinian/starred{/owner}{/repo}'
  subscriptions_url: 'https://api.github.com/users/socinian/subscriptions'
  organizations_url: 'https://api.github.com/users/socinian/orgs'
  repos_url: 'https://api.github.com/users/socinian/repos'
  events_url: 'https://api.github.com/users/socinian/events{/privacy}'
  received_events_url: 'https://api.github.com/users/socinian/received_events'
  type: 'User'
  site_admin: false

milestone1=
  url: 'https://api.github.com/repos/socinian/adServerDemo/milestones/1'
  labels_url: 'https://api.github.com/repos/socinian/adServerDemo/milestones/1/labels'
  id: 782978
  number: 1
  title: '0.0.1'
  description: 'First Milestone'
  open_issues: 2
  closed_issues: 0
  state: 'open'
  created_at: '2014-09-09T02:08:24Z'
  updated_at: '2014-09-09T02:09:19Z'
  due_on: '2014-09-30T07:00:00Z'

milestone2 =
  url: 'https://api.github.com/repos/socinian/adServerDemo/milestones/2'
  labels_url: 'https://api.github.com/repos/socinian/adServerDemo/milestones/2/labels'
  id: 712978
  number: 3
  title: '0.0.2'
  description: 'Second Milestone'
  open_issues: 2
  closed_issues: 0
  state: 'open'
  created_at: '2014-09-09T02:08:24Z'
  updated_at: '2014-09-10T02:09:19Z'
  due_on: '2014-09-27T07:00:00Z'

milestone3 =
  url: 'https://api.github.com/repos/socinian/adServerDemo/milestones/3'
  labels_url: 'https://api.github.com/repos/socinian/adServerDemo/milestones/3/labels'
  id: 792978
  number: 3
  title: '0.0.3'
  description: 'Third Milestone'
  open_issues: 2
  closed_issues: 0
  state: 'open'
  created_at: '2014-09-09T02:08:24Z'
  updated_at: '2014-09-10T02:09:19Z'
  due_on: '2014-09-29T07:00:00Z'

milestone4 =
  url: 'https://api.github.com/repos/socinian/adServerDemo/milestones/4'
  labels_url: 'https://api.github.com/repos/socinian/adServerDemo/milestones/4/labels'
  id: 792918
  number: 4
  title: '0.0.4'
  description: 'Forth Milestone'
  open_issues: 2
  closed_issues: 0
  state: 'open'
  created_at: '2014-09-09T02:08:24Z'
  updated_at: '2014-09-10T02:09:19Z'
  due_on: '2014-09-28T07:00:00Z'

sample_issue1 =
  url: 'https://api.github.com/repos/socinian/adServerDemo/issues/1'
  labels_url: 'https://api.github.com/repos/socinian/adServerDemo/issues/1/labels{/name}'
  comments_url: 'https://api.github.com/repos/socinian/adServerDemo/issues/1/comments'
  events_url: 'https://api.github.com/repos/socinian/adServerDemo/issues/1/events'
  html_url: 'https://github.com/socinian/adServerDemo/issues/1'
  id: 42260445
  number: 1
  title: 'Sample Issue - Feature'
  user: user1
  labels: [ ]
  state: 'open'
  locked: false
  assignee: null
  milestone: milestone1
  comments: 0
  created_at: '2014-09-09T00:56:14Z'
  updated_at: '2014-09-09T02:09:19Z'
  closed_at: null
  body: 'Test Feature Filter'

sample_issue2 =
  url: 'https://api.github.com/repos/socinian/adServerDemo/issues/2'
  labels_url: 'https://api.github.com/repos/socinian/adServerDemo/issues/2/labels{/name}'
  comments_url: 'https://api.github.com/repos/socinian/adServerDemo/issues/2/comments'
  events_url: 'https://api.github.com/repos/socinian/adServerDemo/issues/2/events'
  html_url: 'https://github.com/socinian/adServerDemo/issues/2'
  id: 42260558
  number: 2
  title: 'Sample Issue - Bug'
  user: user1
  labels: [ ]
  state: 'open'
  locked: false
  assignee: null
  milestone: milestone2
  comments: 0
  created_at: '2014-09-09T00:58:23Z'
  updated_at: '2014-09-09T02:09:19Z'
  closed_at: null
  body: ''

sample_issue3 = _(sample_issue2).cloneDeep()
_(sample_issue3).assign
  url: 'https://api.github.com/repos/socinian/adServerDemo/issues/3'
  labels_url: 'https://api.github.com/repos/socinian/adServerDemo/issues/3/labels{/name}'
  comments_url: 'https://api.github.com/repos/socinian/adServerDemo/issues/3/comments'
  events_url: 'https://api.github.com/repos/socinian/adServerDemo/issues/3/events'
  html_url: 'https://github.com/socinian/adServerDemo/issues/3'
  id: 42260466
  number: 3
  milestone: milestone3

sample_issue4 = _(sample_issue2).cloneDeep()
_(sample_issue4).assign
  url: 'https://api.github.com/repos/socinian/adServerDemo/issues/4'
  labels_url: 'https://api.github.com/repos/socinian/adServerDemo/issues/4/labels{/name}'
  comments_url: 'https://api.github.com/repos/socinian/adServerDemo/issues/4/comments'
  events_url: 'https://api.github.com/repos/socinian/adServerDemo/issues/4/events'
  html_url: 'https://github.com/socinian/adServerDemo/issues/4'
  id: 44460466
  number: 4
  milestone: milestone4

sample_issue5 = _(sample_issue2).cloneDeep()
_(sample_issue5).assign
  url: 'https://api.github.com/repos/socinian/adServerDemo/issues/5'
  labels_url: 'https://api.github.com/repos/socinian/adServerDemo/issues/5/labels{/name}'
  comments_url: 'https://api.github.com/repos/socinian/adServerDemo/issues/5/comments'
  events_url: 'https://api.github.com/repos/socinian/adServerDemo/issues/5/events'
  html_url: 'https://github.com/socinian/adServerDemo/issues/5'
  id: 54460466
  number: 5
  milestone: milestone4

module.exports =
  sample_issue1: sample_issue1,
  sample_issue2: sample_issue2,
  sample_issue3: sample_issue3,
  sample_issue4: sample_issue4,
  sample_issue5: sample_issue5
