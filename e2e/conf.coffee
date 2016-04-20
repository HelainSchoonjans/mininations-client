
exports.config =
  allScriptsTimeout: 11000

  specs: [
    'scenarios/**/*.coffee'
  ]

  capabilities:
    'browserName': 'chrome'

  baseUrl: 'http://localhost:10000/app'

  framework: 'jasmine'

  jasmineNodeOpts:
    defaultTimeoutInterval: 30000
