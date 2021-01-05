*** Settings ***
Suite Setup       oppo_reno_test
Test Teardown     Close Application
Library           AppiumLibrary

*** Test Cases ***
check_1890-500G
    [Documentation]    Test open app
    Wait Until Page Contains Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.viewpager.widget.ViewPager/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.TextView    20s
    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.viewpager.widget.ViewPager/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.TextView
    Wait Until Page Contains Element    xpath=//*[@text='彭']    20s
    Click Element    xpath=//*[@text='彭']
    Wait Until Page Contains Element    xpath=//*[@text='A_1890']    20s
    Click Element    xpath=//*[@text='A_1890']

*** Keywords ***
oppo_reno_test
    [Documentation]    Test open app
    Open Application    http://localhost:4723/wd/hub    platformName=Android    platformVersion=10    deviceName=oppo    appPackage=com.midea.ai.appliances    appActivity=com.midea.meiju.main.MainActivity
    Wait Until Page Contains Element    id=com.android.permissioncontroller:id/permission_allow_button1    10s
    Click Element    id=com.android.permissioncontroller:id/permission_allow_button1
    Wait Until Page Contains Element    id=com.android.permissioncontroller:id/permission_allow_button    10s
    Click Element    id=com.android.permissioncontroller:id/permission_allow_button
    Wait Until Page Contains Element    xpath=//*[@text='立即登录']    10s
    Click Element    xpath=//*[@text='立即登录']
    Wait Until Page Contains    密码登录
    Click Text    密码登录
    Wait Until Page Contains Element    xpath=//*[@text='请输入手机号码']    10s
    Click Element    xpath=//*[@text='请输入手机号码']
    Input Value    xpath=//*[@text='请输入手机号码']    18664252074
    Click Element    xpath=//*[@text='请输入密码']
    Input Value    xpath=//*[@text='请输入密码']    midea123456
    Click Element    id=com.midea.ai.appliances:id/cb
    Click Element    id=com.midea.ai.appliances:id/btn_login

galaxys6
    [Documentation]    Test open app
    Open Application    http://localhost:4723/wd/hub    platformName=Android    platformVersion=7.0    deviceName=Galaxy S6    appPackage=com.midea.ai.appliances    appActivity=com.midea.meiju.main.MainActivity
