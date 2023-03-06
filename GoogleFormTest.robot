*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    chrome
${URL}    https://forms.gle/AaRqwb3iM9xbYev27
${Delay}    0.5

*** Keywords ***
Open Google form
    Open Browser     ${url}     ${browser}

Click To Login Page
    Click Element    //*[@id="SMMuxb"]/a[1]

Input Email
    Click Element    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[1]/div/div/div[2]/div/div[1]/div/div[1]/input
    Input Text    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[1]/div/div/div[2]/div/div[1]/div/div[1]/input    watcharin.selenium@gmail.com

Input Name
    Click Element    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[2]/div/div/div[2]/div/div[1]/div/div[1]/input
    Input Text    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[2]/div/div/div[2]/div/div[1]/div/div[1]/input    Watcharin Panyawong

Select Gender
    Click Element    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[3]/div/div/div[2]/div/div[1]/div[1]/div[1]
    Click Element    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[3]/div/div/div[2]/div/div[2]/div[3]/span

Input Ages
    Click Element    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[4]/div/div/div[2]/div/div[1]/div/div[1]/input
    Input Text    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[4]/div/div/div[2]/div/div[1]/div/div[1]/input    25

Select Smartphone Brand
    Click Element    //*[@id="i24"]/div[3]/div

Select Time to use Smartphone per Day
    Click Element    //*[@id="i49"]/div[3]/div

Input Comment
    Click Element    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[7]/div/div/div[2]/div/div[1]/div[2]/textarea
    Input Text    //*[@id="mG61Hd"]/div[2]/div/div[2]/div[7]/div/div/div[2]/div/div[1]/div[2]/textarea    ควรเพิ่มรายละเอียดมากกว่านี้

Click Submit
    Click Element    //*[@id="mG61Hd"]/div[2]/div/div[3]/div[1]/div[1]/div/span

*** Test Cases ***

Test Submit Google form
    Open Google form
    Set Selenium Speed    ${Delay}
    Click To Login Page
    Sleep    2
    Close Browser
    Open Google form
    Input Email
    Input Name
    Select Gender
    Input Ages
    Select Smartphone Brand
    Select Time to use Smartphone per Day
    Input Comment
    #Click Submit
    Sleep    2