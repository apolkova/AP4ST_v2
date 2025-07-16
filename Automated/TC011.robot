*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Library  String
Library  OperatingSystem
Resource  objectRepository/URLs.robot
Resource  objectRepository/Buttons.robot
Resource  objectRepository/Headings.robot
Resource  objectRepository/Keywords.robot
Resource  objectRepository/Values.robot
Resource  objectRepository/Inputs.robot

*** Test Cases ***
Pre-conditions - Otevři hlavní stránku města Bzenec
  Open and Verify URL  ${URL_Bzenec_HomePage}  ${Heading_HomePage_MainTitle_XPath}  ${Logo_MestoBzenec}
  Page Should Contain Element  ${Button_Vyhledat_XPath}

TC011 - Tlačítko Hledat u vyhledávacího pole funguje správně a spustí vyhledávání
  [Tags]  TS003  TC011  FrontEnd
  Click Element  ${Button_Vyhledat_XPath}
  Wait Until Page Contains Element  ${Input_Vyhledat_XPath}
  Input Text  ${Input_Vyhledat_XPath}  ${Hodnota_Zkouska}
  Element Should Be Visible  ${Button_Hledat}
  Click Element  ${Button_Hledat}

Post-conditions - Zavři prohlížeč
  Close Browser
