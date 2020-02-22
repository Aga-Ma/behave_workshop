from web.web_factory import get_browser
from web.web import Web


def before_all(context):
    browser = get_browser(context.config.userdata['browser'])
    web = Web(browser)
    context.web = web
    context.browser = browser


def after_all(context):
    context.browser.quit()
