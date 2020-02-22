from behave import given, when, then, step


@step('a user visit google')
def step_impl(context):
    context.web.open('http://www.google.com')


# @when('a user visit google')
# def step(context):
#     context.web.open('http://www.google.com')


# @given('the google search page is open')
# def step(context):
#     context.execute_steps('''
#             when a user visit google
#         ''')

@then('it should have a title "Google"')
def step(context):
    assert context.browser.title == "Google"


@when('the user searches for the phrase')
def step_impl(context):
    search_input = context.web.find_by_xpath("//input[@name='q']")
    search_input.send_keys(context.text)


@then('one of the results contains "{phrase}"')
def step_impl(context, phrase):
    xpath = "//*[contains(text(), '%s')]" % phrase
    results = context.web.finds_by_xpath(xpath)
    assert len(results) > 0
