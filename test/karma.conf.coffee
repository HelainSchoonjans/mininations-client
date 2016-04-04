module.exports = (config) ->
  config.set
    # base path, that will be used to resolve files and exclude
    singleRun: false
    autoWatch: true
    basePath: '../'

    # testing framework to use (jasmine/mocha/qunit/...)
    # as well as any additional frameworks (requirejs/chai/sinon/...)
    frameworks: [
      "jasmine"#, 'requirejs'
    ]

    # list of files / patterns to load in the browser
    files: [
      # bower:js
      'bower_components/jquery/dist/jquery.js'
      'bower_components/angular/angular.js'
      'bower_components/bootstrap-sass-official/assets/javascripts/bootstrap.js'
      'bower_components/angular-animate/angular-animate.js'
      'bower_components/angular-cookies/angular-cookies.js'
      'bower_components/angular-resource/angular-resource.js'
      'bower_components/angular-route/angular-route.js'
      'bower_components/angular-sanitize/angular-sanitize.js'
      'bower_components/angular-touch/angular-touch.js'
      'bower_components/angular-mocks/angular-mocks.js'
      # endbower
      # bower:coffee
      # endbower
      "app/scripts/**/*.coffee"
      "test/mock/**/*.coffee"
      "test/spec/**/*.coffee"
    ],

    exclude: [
    ]

    # level of logging
    # possible values: LOG_DISABLE || LOG_ERROR || LOG_WARN || LOG_INFO || LOG_DEBUG
    logLevel: config.LOG_DEBUG

    browsers: [
      "PhantomJS"
	    #"Chrome"
    ]

    # Which plugins to enable
    plugins: [
      'karma-phantomjs-launcher',
      #'karma-chrome-launcher',
      'karma-jasmine',
      'karma-junit-reporter',
      #'karma-ng-html2js-preprocessor',
      #'karma-browserify',
      #'karma-requirejs',
      "karma-coffee-preprocessor",
      'karma-coverage'
    ]

    captureTimeout: 10000

    colors: true

    preprocessors: '**/*.coffee': ['coffee']

    junitReporter:
      outputDir: 'reports/testresults/'
      suite: 'unit'

    reporters: ['coverage', 'junit']

    preprocessors:
      '**/*.coffee': ['coffee']
      #'app/lib/**/*.js': 'coverage'
      'app/scripts/**/*.coffee': 'coverage'

    coverageReporter:
      type : 'cobertura'
      dir : 'reports/codecoverage/'
      file: 'cobertura-coverage.xml'


    # Uncomment the following lines if you are using grunt's server to run the tests
    # proxies: '/': 'http://localhost:9000/'
    # URL root prevent conflicts with the site root
    # urlRoot: '_karma_'
