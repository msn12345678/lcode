*** settings ***
Resource          ../公共部分/公共元素.txt
Resource          登录业务.txt

*** Test Cases ***
成功登录
    登录流程
    隐式等待
    ${aa}    Get text    //*[@id="app"]/div/div/header/div[2]/ul/li[1]/span
    should contain    ${aa}    工作台
    click element    xpath=//*[@id="app"]/div/div/header/div[2]/ul/li[4]/span
    强制等待
    ${bb}    get text    //*[@id="app"]/div/div/div/aside/div/ul/li[1]/span
    should contain    ${bb}    员工列表
    click element    xpath=//*[@id="pane-first"]/div/div[1]/form/div[2]/button[2]/span
    强制等待
    ${cc}    get text    xpath=//*[@id="app"]/div/div/div/div/section/div/div[1]/div[3]
    should contain    ${cc}    添加员工
    input text    xpath=//*[@id="app"]/div/div/div/div/section/div/form/div[2]/div[1]/div/div/div[1]/input    199549
    强制等待
    input text    xpath=//*[@id="app"]/div/div/div/div/section/div/form/div[4]/div[1]/div/div/div[1]/input    asainan8
    强制等待
    click element    xpath=//*[@id="app"]/div/div/div/div/section/div/form/div[10]/div/button[2]
    强制等待
    ${dd}    get text    xpath=//*[@id="app"]/div/div/div/div/section/div/div[2]/div/div[1]
    should contain    ${dd}    添加成功
    click element    xpath=//*[@id="app"]/div/div/div/div/section/div/div[2]/div/div[3]/span/button
    强制等待
    ${ee}    get text    xpath=//*[@id="app"]/div/div/div/div/section/div/div/div[1]
    should contain    ${ee}    员工列表
    关闭浏览器
    log    ${aa}

未输入用户名
    登录流程    un=\
    隐式等待
    ${bb}    get text    xpath=/html/body/div[2]
    should contain    ${bb}    请填写账号
    关闭浏览器
    log    ${bb}
