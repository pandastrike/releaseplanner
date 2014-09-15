release_planner = require "./src/releaseplanner"
test_data = require "./test/releaseplanner/test"

release_planner.lastMilestones(3, [
  test_data.sample_issue1,
  test_data.sample_issue2,
  test_data.sample_issue3,
  test_data.sample_issue4,
  test_data.sample_issue5
])
