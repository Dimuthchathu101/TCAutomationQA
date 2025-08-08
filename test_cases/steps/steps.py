from behave import given, when, then
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.chrome.options import Options
import time
import yaml
import os

# Global driver variable
driver = None

def setup_driver():
    """Setup Chrome driver with headless options"""
    chrome_options = Options()
    chrome_options.add_argument("--headless")
    chrome_options.add_argument("--no-sandbox")
    chrome_options.add_argument("--disable-dev-shm-usage")
    chrome_options.add_argument("--disable-gpu")
    chrome_options.add_argument("--window-size=1920,1080")
    return webdriver.Chrome(options=chrome_options)

@given('I am on the test page')
def step_impl(context):
    """Navigate to the test page"""
    global driver
    driver = setup_driver()
    # This will be replaced with actual URL from YAML config
    driver.get("https://example.com")

@when('I click on a button')
def step_impl(context):
    """Click on a button element"""
    global driver
    # This will be replaced with actual element selector from YAML config
    button = WebDriverWait(driver, 10).until(
        EC.element_to_be_clickable((By.CSS_SELECTOR, "button"))
    )
    button.click()

@then('the action should complete successfully')
def step_impl(context):
    """Verify the action completed successfully"""
    global driver
    # This will be replaced with actual verification logic from YAML config
    assert driver.current_url is not None
    driver.quit()

# Generic step definitions that can be used with YAML configurations
@given('I am on "{url}"')
def step_impl(context, url):
    """Navigate to a specific URL"""
    global driver
    if driver is None:
        driver = setup_driver()
    driver.get(url)

@when('I click on element "{selector}"')
def step_impl(context, selector):
    """Click on an element using CSS selector"""
    global driver
    element = WebDriverWait(driver, 10).until(
        EC.element_to_be_clickable((By.CSS_SELECTOR, selector))
    )
    element.click()

@when('I input "{text}" into element "{selector}"')
def step_impl(context, text, selector):
    """Input text into an element using CSS selector"""
    global driver
    element = WebDriverWait(driver, 10).until(
        EC.presence_of_element_located((By.CSS_SELECTOR, selector))
    )
    element.clear()
    element.send_keys(text)

@then('I should see "{text}"')
def step_impl(context, text):
    """Verify text is present on the page"""
    global driver
    assert text in driver.page_source

@then('I should see element "{selector}"')
def step_impl(context, selector):
    """Verify element is present on the page"""
    global driver
    element = WebDriverWait(driver, 10).until(
        EC.presence_of_element_located((By.CSS_SELECTOR, selector))
    )
    assert element is not None

def before_scenario(context, scenario):
    """Setup before each scenario"""
    global driver
    driver = None

def after_scenario(context, scenario):
    """Cleanup after each scenario"""
    global driver
    if driver:
        driver.quit()
        driver = None