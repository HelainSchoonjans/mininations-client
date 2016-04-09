'use strict'

describe 'Controller: FoundationCtrl', ->

  # load the controller's module
  beforeEach module 'mininationsApp'

  FoundationCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    FoundationCtrl = $controller 'FoundationCtrl', {
      # place here mocked dependencies
    }

  it 'should start with the step 0', ->
    expect(FoundationCtrl.currentStep).toBe(0)

  it 'should check that step is 0', ->
    expect(FoundationCtrl.isStep(0)).toBe(true)

  it 'should check that step is 1', ->
    FoundationCtrl.currentStep = 1
    expect(FoundationCtrl.isStep(1)).toBe(true)

  it 'should be able to make a transition, increasing the step', ->
    FoundationCtrl.next()
    expect(FoundationCtrl.currentStep).toBe(1)

  it "shouldn't be able to increase the step beyond the maximum number of steps", ->
    FoundationCtrl.maximumStep = 1
    FoundationCtrl.next()
    expect(FoundationCtrl.currentStep).toBe(1)
    FoundationCtrl.next()
    expect(FoundationCtrl.currentStep).toBe(1)

  it 'should be able to make a transition, decreasing the step', ->
    FoundationCtrl.currentStep = 1
    FoundationCtrl.previous()
    expect(FoundationCtrl.currentStep).toBe(0)

  it "shouldn't be able to decrease the step under 0", ->
    FoundationCtrl.previous()
    expect(FoundationCtrl.currentStep).toBe(0)

#  it 'should erase the result of the previous step if going backward', ->
#    expect(false).toBe(true)
