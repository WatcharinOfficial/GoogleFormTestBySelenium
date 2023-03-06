*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    chrome
${URL}    https://forms.gle/AaRqwb3iM9xbYev27
${Delay}    0.5

*** Keywords ***
Open Google form
    Open Browser     ${url}     ${browser}

*** Test Cases ***
User select "เวลาใช้งานต่อวัน" is "0 - 2 ชั่วโมง"
    Open Google form
    Set Selenium Speed    ${Delay}
    Click Element    //*[@id="i58"]/span
    Click Element    //*[@id="i46"]/div[3]/div

User select "เวลาใช้งานต่อวัน" is "3 - 5 ชั่วโมง"
    Click Element    //*[@id="i49"]/div[3]/div

User select "เวลาใช้งานต่อวัน" is "6 - 10 ชั่วโมง"
    Click Element    //*[@id="i52"]/div[3]/div

User select "เวลาใช้งานต่อวัน" is "มากกว่า 10 ชั่วโมง"
    Click Element    //*[@id="i55"]/div[3]/div
    Click Element    //*[@id="i58"]/span
    Sleep    1

User input "ข้อเสนอแนะ" with text 
    Click Element    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[7]/div/div/div[2]/div/div[1]/div[2]/textarea
    Input Text    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[7]/div/div/div[2]/div/div[1]/div[2]/textarea    ควรเพิ่มรายละเอียดมากกว่านี้
    Sleep    2