*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  objectRepository/URLs.robot
Resource  objectRepository/Headings.robot
Resource  objectRepository/Keywords.robot
Resource  objectRepository/Logo.robot

*** Test Cases ***
Pre-conditions - Otevři hlavní stránku města Bzenec
    Open and Verify URL  ${URL_Bzenec_HomePage}  ${Heading_HomePage_MainTitle_XPath}  ${Logo_MestoBzenec}

TC001 - Ověření načtení a viditelnosti hlavního nadpisu
    [Tags]  TS001  TC001  FrontEnd
    Page Should Contain Element  ${Heading_HomePage_MainTitle_XPath}
    Element Should Be Visible  ${Heading_HomePage_MainTitle_XPath}
    Page Should Contain Element  ${Logo_MestoBzenec} 
    Element Should Be Visible  ${Logo_MestoBzenec}
    Element Text Should Be  ${Heading_HomePage_IntroductionText_XPath}  ${Heading_HomePage_IntroductionText_Expected}
    
Post-conditions - Zavři prohlížeč
    Close Browser

