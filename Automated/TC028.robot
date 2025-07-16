*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Library  String
Library  OperatingSystem
Resource  objectRepository/URLs.robot
Resource  objectRepository/Buttons.robot
Resource  objectRepository/Images.robot
Resource  objectRepository/Headings.robot
Resource  objectRepository/Logo.robot
Resource  objectRepository/Keywords.robot


*** Test Cases ***
Pre-conditions - Otevři stránku Fotogalerie
    Open and Verify URL  ${URL_Fotografie_BzenecZVysky}  ${Heading_Fotografie_ZazijteBzenec_BzenecZVysky}  ${Logo_MestoBzenec}
    Click Element  ${Image_Fotografie_BzenecZVysky_1}
    Wait Until Element Is Visible  ${Heading_Fotografie_ZazijteBzenec_PhotoLabel}

TC028 - Ověření posouvání galerie (další obrázky)
    [Tags]  TS009  TC028  FrontEnd
    #posouvani galerie pomoci tlacitek
    Wait Until Element Is Visible  ${Heading_Fotografie_ZazijteBzenec_PhotoLabel}
    Posouvani obrayku with buttons
    #posouvani galerie pomoci sipek na klavesnici
    Wait Until Element Is Visible  ${Heading_Fotografie_ZazijteBzenec_PhotoLabel}
    Posouvani obrazku with arrows

Post-conditions - Zavři prohlížeč
    Click Element  ${Button_Fotografie_Close}
    Close Browser
