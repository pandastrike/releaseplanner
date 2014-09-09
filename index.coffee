{resolve} = require "path"
{resource} = require "shred"
{parse} = require "c50n"
{base64, read} = require "fairmont"

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

# later, use the API client -- here, we'll just list some issues
github
.on "error", (error) ->
    console.log error
.issues owner: owner, repo: repo
  .list()
  .on "ready", (issues) ->
      for {number, title} in issues
        console.log number, title

