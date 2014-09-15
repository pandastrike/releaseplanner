release_planner = require "../../src/releaseplanner"
test_data = require "../releaseplanner/test-data"
Testify = require "testify"
assert = require "assert"

Testify.test "Test reading issue data, selecting milestones, and writing a wiki page", (context) ->

  context.test "Sort issues by milestones and return the first 3 open milestones", ->
    last3milestones = {}
    assert.doesNotThrow ->
      last3milestones =
        release_planner.lastMilestones(3, [
          test_data.sample_issue1,
          test_data.sample_issue2,
          test_data.sample_issue3,
          test_data.sample_issue4,
          test_data.sample_issue5
        ])
    console.log last3milestones.first().values().first()[0]
    assert.equal last3milestones.size(), 3, "Wrong number of milestones returned"
    assert (last3milestones.first().keys().contains '0.0.2'), "Couldn't find the 0.0.2 milestone"
    assert.equal last3milestones.first().keys().size(), 1, "Should only have one property which is '0.0.2'"
    assert (last3milestones.first().values().first()), "Value of property should not be null"
    assert.equal last3milestones.first().values().first().length, 1, "Milestone '0.0.2' should contain only one issues"
    assert (last3milestones.first().values().first()[0]), "Milestone '0.0.2' should contain an issue object"
    assert (last3milestones.first().values().first()[0].url),
      "Milestone '0.0.2' issues should have a url"
    assert.equal last3milestones.first().values().first()[0].url,
      "https://api.github.com/repos/socinian/adServerDemo/issues/2",
      "Milestone '0.0.2' issues should have correct url"
    assert (last3milestones.first().values().first()[0].id),
      "Milestone '0.0.2' issues should have an id"
    assert (last3milestones.first().values().first()[0].number),
      "Milestone '0.0.2' issues should have a number"
    assert (last3milestones.first().values().first()[0].user),
      "Milestone '0.0.2' issues should have a user"
    assert (last3milestones.first().values().first()[0].title),
      "Milestone '0.0.2' issues should have a title"
    assert.equal last3milestones.first().values().first()[0].title,
      'Sample Issue - Bug',
      "Milestone '0.0.2' issue should have open state"
    assert (last3milestones.first().values().first()[0].state),
      "Milestone '0.0.2' issues should have a state"
    assert.equal last3milestones.first().values().first()[0].state,
      'open',
      "Milestone '0.0.2' issue should have open state"
    assert.equal last3milestones.first().values().first()[0].closed_at,
      null,
      "Milestone '0.0.2' issue should not have a closed date"

  context.test "Read issues from Github", ->
    assert.equal true, false

  context.test "Format milestones and issues into markdown release plan page", ->
    assert.equal true, false

  context.test "Write markdown release page to wiki page", ->
    assert.equal true, false

