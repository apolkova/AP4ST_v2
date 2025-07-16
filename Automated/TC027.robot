*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  objectRepository/URLs.robot
Resource  objectRepository/Buttons.robot
Resource  objectRepository/Images.robot
Resource  objectRepository/Headings.robot
Resource  objectRepository/Logo.robot
Resource  objectRepository/Keywords.robot


*** Test Cases ***
Pre-conditions - Otevři stránku Fotogalerie
    Open and Verify URL  ${URL_Fotografie_BzenecZVysky}  ${Heading_Fotografie_ZazijteBzenec_BzenecZVysky}  ${Logo_MestoBzenec}

TC027 - Ověření zvětšení obrázku po kliknutí na náhled
    [Tags]  TS009  TC027  FrontEnd
    Page should Contain Element  ${Heading_Fotografie_ZazijteBzenec_BzenecZVysky}
    Rozkliknout a zavrit obrazek  ${Image_Fotografie_BzenecZVysky_1}
    Rozkliknout a zavrit obrazek  ${Image_Fotografie_BzenecZVysky_2}
    Rozkliknout a zavrit obrazek  ${Image_Fotografie_BzenecZVysky_3}
    Rozkliknout a zavrit obrazek  ${Image_Fotografie_BzenecZVysky_4}
    Rozkliknout a zavrit obrazek  ${Image_Fotografie_BzenecZVysky_5}
    Rozkliknout a zavrit obrazek  ${Image_Fotografie_BzenecZVysky_6}
    Rozkliknout a zavrit obrazek  ${Image_Fotografie_BzenecZVysky_7}
    Rozkliknout a zavrit obrazek  ${Image_Fotografie_BzenecZVysky_8}
    Rozkliknout a zavrit obrazek  ${Image_Fotografie_BzenecZVysky_9}

Post-conditions - Zavři prohlížeč
    Close Browser
