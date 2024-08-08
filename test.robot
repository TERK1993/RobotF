*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}       https://www.soccersuck.com/
${USERNAME}  terk2416
${PASSWORD}  t029069070

*** Test Cases ***
Login Test
    Open Browser    ${URL}    chrome
    #...    options=add_experimental_option("detach", True) ไม่ปิด browser

    Maximize Browser Window  # ทำให้หน้าต่างเบราว์เซอร์เต็มจอ
    Input Username
    Input Password
    Click Login Button
    Verify Login Success
    Sleep    10s
    Verify Logout Success
    

*** Keywords ***
Input Username
    [Arguments]    ${username}=${USERNAME}
    Input Text    id=header_email    ${username}

Input Password
    [Arguments]    ${password}=${PASSWORD}
    Input Text    id=header_pass   ${password}

Click Login Button
    Click Element    xpath=//div[contains(@class, 'header_login')]

Verify Login Success
    Wait Until Page Contains Element    xpath=//div[contains(@class, 'header_user_name') and contains(text(), 'terk2416')]

Verify Logout Success
    Click Element    xpath=//div[contains(@class, 'header_logout')]qwfq;ihfoqhgoqwg

