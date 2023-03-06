*** Settings ***
Library    SeleniumLibrary
Library    XML

*** Variables ***
${Browser}    chrome
${URL}    https://forms.gle/AaRqwb3iM9xbYev27
${Delay}    0.5

*** Keywords ***
Open Google form
    Open Browser     ${url}     ${browser}

Test Click out of Element
    Click Element    //*[@id="i13"]/span[1]

*** Test Cases ***
User input Ages with number
    Open Google form
    Set Selenium Speed    ${Delay}
    Click Element    //*[@id="i17"]/span[1]
    Click Element    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[4]/div/div/div[2]/div/div[1]/div/div[1]/input
    Input Text    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[4]/div/div/div[2]/div/div[1]/div/div[1]/input    25
    Test Click out of Element

User input Ages with text
    Clear Element Text    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[4]/div/div/div[2]/div/div[1]/div/div[1]/input
    Input Text    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[4]/div/div/div[2]/div/div[1]/div/div[1]/input    twenty-five
    Test Click out of Element

User input Ages with negative number
    Clear Element Text    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[4]/div/div/div[2]/div/div[1]/div/div[1]/input
    Input Text    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[4]/div/div/div[2]/div/div[1]/div/div[1]/input    -25
    Test Click out of Element

User input Ages with over human ages
    Clear Element Text    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[4]/div/div/div[2]/div/div[1]/div/div[1]/input
    Input Text    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[4]/div/div/div[2]/div/div[1]/div/div[1]/input    2500
    Test Click out of Element

User input Ages with special text characters
    Clear Element Text    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[4]/div/div/div[2]/div/div[1]/div/div[1]/input
    Input Text    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[4]/div/div/div[2]/div/div[1]/div/div[1]/input    $$$
    Test Click out of Element

User input Ages with TH languege text
    Clear Element Text    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[4]/div/div/div[2]/div/div[1]/div/div[1]/input
    Input Text    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[4]/div/div/div[2]/div/div[1]/div/div[1]/input    ยี่สิบห้า
    Test Click out of Element
    Sleep    3