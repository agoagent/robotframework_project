*** Settings ***
Library           RequestsLibrary

*** Test Cases ***
注册接口-post
    # 设置请求头 .
    &{header}=    Create Dictionary    Content-Type=application/x-www-form-urlencoded
    # 会话别名为 nmb    接口所在服务器域名地址为：test.lemonban.com
    Create Session    nmb    http://test.lemonban.com    headers=${header}
    # 准备请求数据
    &{data}=    Create Dictionary    username=18688710213    passwd=fe7ead29e825e0463d9d8fca37ee42f5
    # 发送post请求，并用变量接收响应结果
    ${resp}    Post Request    nmb    ningmengban/mvc/user/register.json
    # ${resp} = <Response [200]>    是一个python requests库当中的Response对象。我们需要从这个对象当中，拿到响应的具体数据。
    # 从python对象当中拿数据的方法:${python中Request的表达式}
    # 获取http请求的状态码
    Log    ${resp.status_code}
    # 获取本次的响应数据
    Log    ${resp.text}
    # 将响应数据从字符串转换成python的字典对象
    Log    ${resp.json()}
    # 断言 - 字符串相等
    Should Be Equal As Strings    ${resp.text}    {"success":true,"message":"注册成功","content":null,"object":null}
    # 断言 - 从字典当中取出message的值，与 注册成功    是否相等。
    Should Be Equal As Strings    注册成功    ${resp.json()["message"]}
