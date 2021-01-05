*** Settings ***
Suite Setup       open baidu
Suite Teardown    Close All Browsers
Library           SeleniumLibrary

*** Test Cases ***
Hello World
    input text    css=#kw[name="wd"]    hello word
    click element    css=input[id="su"]
    wait until page contains    百度为您找到相关结果    10s

*** Keywords ***
open baidu
    Open Browser    http://www.baidu.com    gc
    Set Window Size    1980    1080
    Maximize Browser Window
