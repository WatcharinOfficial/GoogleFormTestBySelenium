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
User select "โทรศัพท์มือถือที่ใช้" is Apple (iPhone)
    Open Google form
    Set Selenium Speed    ${Delay}
    Click Element    //*[@id="i21"]/div[3]/div

User select "โทรศัพท์มือถือที่ใช้" is Samsung
    Click Element    //*[@id="i24"]/div[3]/div

User select "โทรศัพท์มือถือที่ใช้" is Oppo
    Click Element    //*[@id="i27"]/div[3]/div

User select "โทรศัพท์มือถือที่ใช้" is Vivo
    Click Element    //*[@id="i30"]/div[3]/div 

User select "โทรศัพท์มือถือที่ใช้" is Huawei
    Click Element    //*[@id="i33"]/div[3]/div 

User select "โทรศัพท์มือถือที่ใช้" is Xiaomi
    Click Element    //*[@id="i36"]/div[3]/div 
    
User select "โทรศัพท์มือถือที่ใช้" is Others and input "Realme"
    Click Element    //*[@id="i39"]/div[3]/div
    Input Text    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[5]/div/div/div[2]/div/div/span/div/div[7]/div/span/div/div/div[1]/input    Realme
    Click Element    //*[@id="i42"]/span[1]
    Sleep    3