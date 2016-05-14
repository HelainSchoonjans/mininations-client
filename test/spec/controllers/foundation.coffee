'use strict'

describe 'Controller: FoundationCtrl', ->

  beforeEach module 'mininationsApp'

  FoundationCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    FoundationCtrl = $controller 'FoundationCtrl',
      $scope: scope

  it 'should start with the step "introduction"', ->
    expect(FoundationCtrl.currentStepName).toBe("introduction")

  it 'should check that step is "introduction"', ->
    expect(FoundationCtrl.isStep("introduction")).toBe(true)

  it 'should check that step is "presentation"', ->
    FoundationCtrl.currentStepName = "presentation"
    expect(FoundationCtrl.isStep("presentation")).toBe(true)

  it 'should be able to make a transition, increasing going to the next step', ->
    FoundationCtrl.next()
    expect(FoundationCtrl.currentStepName).toBe("presentation")

  it "shouldn't be able to go to the next step when there isn't one", ->
    FoundationCtrl.currentStepName = "render"
    expect(FoundationCtrl.currentStepName).toBe("render")
    FoundationCtrl.next()
    expect(FoundationCtrl.currentStepName).toBe("render")

  it 'should be able to make a transition, going to the previous step', ->
    FoundationCtrl.currentStepName = "presentation"
    FoundationCtrl.previous()
    expect(FoundationCtrl.currentStepName).toBe("introduction")

  it "shouldn't be able to go to the previous step if there isn't one", ->
    FoundationCtrl.previous()
    expect(FoundationCtrl.currentStepName).toBe("introduction")
