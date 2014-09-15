{resolve} = require "path"
{resource} = require "shred"
{parse} = require "c50n"
{base64, read} = require "fairmont"
{needle} = require "needle"
{_} = require "lodash"

# read our personal github token from a file
{id, key} = parse(read(resolve(__dirname, ".token")).trim())

# read github owner and repo from a config file
{owner, repo} = parse(read(resolve(__dirname, "config.cson")).trim())

# define our API client
github = resource "https://api.github.com/",
  issues: (resource) ->
    resource "repos/{owner}/{repo}/issues",
      create:
        method: "post"
        headers:
          accept: "application/vnd.github.v3.raw+json"
        expect: 201
      list:
        method: "get"
        headers:
          accept: "application/vnd.github.v3.raw+json"
        expect: 200

milestone_from_issue = (issue) ->
  (issue.values().first())[0].milestone


lastMilestones = (qty, issues) ->
  issues_by_milestones = _(issues).groupBy (issue) -> issue.milestone.title
  all_issue_milestones = _(issues).pluck 'milestone'
  all_milestones = all_issue_milestones.map (milestone) ->
    title: milestone.title
    state: milestone.state
    due_on: milestone.due_on
    milestone: milestone
  all_open_milestones = _(all_milestones).where (milestone) ->
    milestone.state is 'open'
  all_unique_milestones = all_open_milestones.unique (milestone) ->
    milestone.title
  first_qty_milestones_by_due_on = (all_unique_milestones.sortBy "due_on").first qty
  issues_by_first_milestones = first_qty_milestones_by_due_on.map (key) ->
    issues_by_milestones.pick key.title

# Generate test from template
# Write to wiki page

# later, use the API client -- here, we'll just list some issues
plan_release = ->
  github
  .on "error", (error) ->
      console.log error
  .issues owner: owner, repo: repo
    .list()
    .on "ready", (issues) ->
        console.log issues
        issues[1].milestone.state = "closed"
        lastMilestones(3, issues)

module.exports =
  plan_release: plan_release
  milestone_from_issue: milestone_from_issue
  lastMilestones: lastMilestones
