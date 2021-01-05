*** Settings ***
Suite Setup       open baidu
Suite Teardown    Close All Browsers
Library           SeleniumLibrary

*** Test Cases ***
login
    input text    css=#Panel_txtUserID-inputEl[name="Panel$txtUserID"]    zx
    input text    css=#Panel_txtPassword-inputEl[name="Panel$txtPassword"]    123
    click element    css=#Panel_btnLogin
    wait until page contains    门户    10s

*** Keywords ***
open baidu
    Open Browser    https://demo.fanpusoft.com/    gc
    Set Window Size    1980    1080
    Maximize Browser Window
