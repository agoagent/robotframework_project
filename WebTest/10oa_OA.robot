*** Settings ***
Suite Setup       open website
Suite Teardown    Close All Browsers
Library           Selenium2Library

*** Test Cases ***
login
    input text    css=input[name="nameLogin"]    李萌
    input text    css=input[name="password"]    000000
    click element    css=td .button
    wait until page contains    我的桌面    10s

*** Keywords ***
open website
    Open Browser    http://cloud.10oa.com/trial/?appName=    gc
    Set Window Size    1980    1080
    Maximize Browser Window
