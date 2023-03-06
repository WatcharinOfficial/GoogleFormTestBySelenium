*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    chrome
${URL}    https://forms.gle/AaRqwb3iM9xbYev27
${Delay}    0.5

*** Keywords ***
Open Google form
    Open Browser     ${url}     ${browser}

Test Click out of Element
    Click Element    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[3]/div/div

*** Test Cases ***
User click dropdown to select gender "ชาย"
    Open Google form
    Set Selenium Speed    ${Delay}
    Click Element    //*[@id="i13"]/span[1]
    Click Element    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[3]/div/div/div[2]/div/div[1]/div[1]/div[1]
    Click Element    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[3]/div/div/div[2]/div/div[2]/div[3]/span
    Test Click out of Element

User click dropdown to select gender "หญิง"
    Click Element    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[3]/div/div/div[2]/div/div[1]/div[1]/div[3]
    Click Element    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[3]/div/div/div[2]/div/div[2]/div[4]/span
    Test Click out of Element

User click dropdown to select gender "ไม่ต้องการระบุ"
    Click Element    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[3]/div/div/div[2]/div/div[1]/div[1]/div[4]
    Click Element    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[3]/div/div/div[2]/div/div[2]/div[5]/span
    Test Click out of Element
    Sleep    3