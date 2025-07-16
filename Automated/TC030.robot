*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Library  XML
Resource  objectRepository/URLs.robot
Resource  objectRepository/Browsers.robot
Resource  objectRepository/Headings.robot
Resource  objectRepository/Video.robot
Resource  objectRepository/Values.robot
Resource  objectRepository/Logo.robot
Resource  objectRepository/Buttons.robot
Resource  objectRepository/Keywords.robot

*** Test Cases ***
Pre-conditions - Otevři stránku Videoreportáže
    Open Browser  ${URL_VideoReportaze}  ${Browser_Chrome}
    Wait Until Location Is  ${URL_VideoReportaze}
    Wait Until Element Is Visible  ${Heading_Videoreportaze}
    Click Element  ${Button_Videoreportaz_1} 

TC030 - Ověření funkčnosti přehrávače
    [Tags]  TS010  TC030  FrontEnd
    Set Selenium Speed  ${Hodnota_Selenium_Speed_0.5s}
    Wait Until Element Is Visible  ${Video_Kontejner}
    Click Element  ${Video_Kontejner}  
    Select Frame  ${Video_Kontejner}

Fullscreen
    Click Element  ${Button_Videoreportaz_Fullscreen}

Play Button
    Click Element  ${Button_Videoreportaz_PlayButton}
    Click Element  ${Button_Videoreportaz_PlayButton}
Volumebtn
    Click Element  ${Button_Videoreportaz_Volume1}
    Click Element  ${Button_Videoreportaz_Volume4}
    Click Element  ${Button_Videoreportaz_Volume7}
    Click Element  ${Button_Videoreportaz_Volume5}
    Click Element  ${Button_Videoreportaz_Volume2}
    Click Element  ${Button_Videoreportaz_Volume6} 
    Click Element  ${Button_Videoreportaz_Volume3}
    Click Element  ${Button_Videoreportaz_Mute}

Resolution
    Testing Ressolution  ${Button_Videoreportaz_Resolution360}
    Testing Ressolution  ${Button_Videoreportaz_Resolution480}
    Testing Ressolution  ${Button_Videoreportaz_Resolution720}
    Testing Ressolution  ${Button_Videoreportaz_Resolution1080}

Closing video
    Click Element  ${Button_Videoreportaz_Fullscreen}
    Unselect Frame

Post-conditions - Zavři prohlížeč
    Close Browser

