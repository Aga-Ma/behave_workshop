from behave import given, when, then, step


@when('a user visit google')
def step(context):
    context.web.open('http://www.google.com')


@then('it should have a title "Google"')
def step(context):
    assert context.browser.title == "Google"


# @step('a user visit google')
# def step(context):
#     context.web.open('http://www.google.com')

@given('the google search page is open')
def step(context):
    pass


@when('the user searches for the phrase')
def step_impl(context):
    pass


@then('one of the results contains "{phrase}"')
def step_impl(context, phrase):
    pass
