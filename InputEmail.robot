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
    Click Element    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[1]/div/div

*** Test Cases ***
User input vaid Email should work fine
    Open Google form
    Set Selenium Speed    ${Delay}
    Click Element    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[1]/div/div/div[2]/div/div[1]/div/div[1]/input
    Input Text    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[1]/div/div/div[2]/div/div[1]/div/div[1]/input    watcharin.selenium@gmail.com
    Test Click out of Element

User input email with non-email text.
    Clear Element Text    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[1]/div/div/div[2]/div/div[1]/div/div[1]/input
    Input Text    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[1]/div/div/div[2]/div/div[1]/div/div[1]/input    watcharin.selenium
    Test Click out of Element

User input Email with number
    Clear Element Text    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[1]/div/div/div[2]/div/div[1]/div/div[1]/input
    Input Text    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[1]/div/div/div[2]/div/div[1]/div/div[1]/input    123456789
    Test Click out of Element

User input Email with number
    Clear Element Text    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[1]/div/div/div[2]/div/div[1]/div/div[1]/input
    Input Text    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[1]/div/div/div[2]/div/div[1]/div/div[1]/input    $$$$
    Test Click out of Element
    Sleep    3