from selenium import webdriver


def get_browser(browser):
    if browser == "chrome":
        return webdriver.Chrome("C:/drivers/chromedriver.exe")