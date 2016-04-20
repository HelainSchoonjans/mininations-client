
describe "the foundation page", () ->

  baseUrl = "http://localhost:9000"

  it "should have a title", () ->
    browser.get("#{baseUrl}/#/found")

    expect(browser.getTitle()).toEqual("Micronations")

  it "should pass the first button", () ->
    browser.get("#{baseUrl}/#/found")

    firstButton = `by`.id "beginFoundationButton"

    expect($("#introduction").isDisplayed()).toBe(true)
    expect($("#presentation").isDisplayed()).toBe(false)
    element(firstButton).click()
    expect($("#introduction").isDisplayed()).toBe(false)
    expect($("#presentation").isDisplayed()).toBe(true)



    # element(`by`.model("todoList.todoText")).sendKeys("write first protractor test")
    # element(`by`.css("[value="add"]")).click()
    #
    # todoList = element.all(`by`.repeater("todo in todoList.todos"))
    # expect(todoList.count()).toEqual(3)
    # expect(todoList.get(2).getText()).toEqual("write first protractor test")
    #
    # # You wrote your first test, cross it off the list
    # todoList.get(2).element(`by`.css("input")).click()
    # completedAmount = element.all(`by`.css(".done-true"))
    # expect(completedAmount.count()).toEqual(2)
