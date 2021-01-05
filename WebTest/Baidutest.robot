*** Settings ***
Suite Setup       open baidu
Suite Teardown    Close All Browsers
Library           SeleniumLibrary

*** Test Cases ***
Hello World
    input text    css=#kw[name="wd"]    hello word
    click element    css=input[id="su"]
    wait until page contains    百度为您找到相关结果    10s

taobao
    goto    https://www.taobao.com
    Wait Until Page Contains Element    css=input#q
    input text    css=input#q    香奈儿五号香水
    click element    css=#J_TSearchForm > div.search-button > button
    wait until page contains    您是不是想找    20s

*** Keywords ***
open baidu
    Open Browser    http://www.baidu.com    gc
    Set Window Size    1980    1080
    Maximize Browser Window
