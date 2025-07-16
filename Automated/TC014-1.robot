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
Pre-conditions - Otevři stránku Úřední deska
  Open and Verify URL  ${URL_Menu_UredniDeska}  ${Heading_UredniDeska_XPath}  ${Logo_MestoBzenec}

TC014-1 - Ověření, že oznámení jde rozkliknout
  [Tags]  TS004  TC014-1  FrontEnd
  UD Overeni Oznameni  ${Hodnota_2}
  UD Overeni Oznameni  ${Hodnota_3}
  UD Overeni Oznameni  ${Hodnota_4}
  UD Overeni Oznameni  ${Hodnota_5}
  UD Overeni Oznameni  ${Hodnota_6}
  UD Overeni Oznameni  ${Hodnota_7}
  UD Overeni Oznameni  ${Hodnota_8}
  UD Overeni Oznameni  ${Hodnota_9}
  UD Overeni Oznameni  ${Hodnota_10}
  UD Overeni Oznameni  ${Hodnota_11}
  UD Overeni Oznameni  ${Hodnota_12}
  UD Overeni Oznameni  ${Hodnota_13}
  UD Overeni Oznameni  ${Hodnota_14}
  UD Overeni Oznameni  ${Hodnota_15}
  UD Overeni Oznameni  ${Hodnota_16}
  UD Overeni Oznameni  ${Hodnota_17}
  UD Overeni Oznameni  ${Hodnota_18}
  UD Overeni Oznameni  ${Hodnota_19}
  UD Overeni Oznameni  ${Hodnota_20}
  UD Overeni Oznameni  ${Hodnota_21}
  UD Overeni Oznameni  ${Hodnota_22}
  UD Overeni Oznameni  ${Hodnota_23}
  UD Overeni Oznameni  ${Hodnota_24}
  UD Overeni Oznameni  ${Hodnota_25}
  UD Overeni Oznameni  ${Hodnota_26}
  UD Overeni Oznameni  ${Hodnota_27}
  UD Overeni Oznameni  ${Hodnota_28}
  UD Overeni Oznameni  ${Hodnota_29}
  UD Overeni Oznameni  ${Hodnota_30}
  UD Overeni Oznameni  ${Hodnota_31}
  UD Overeni Oznameni  ${Hodnota_32}
  UD Overeni Oznameni  ${Hodnota_33}
  UD Overeni Oznameni  ${Hodnota_34}
  UD Overeni Oznameni  ${Hodnota_35}
  UD Overeni Oznameni  ${Hodnota_36}
  UD Overeni Oznameni  ${Hodnota_37}
  UD Overeni Oznameni  ${Hodnota_38}
  UD Overeni Oznameni  ${Hodnota_39}
  UD Overeni Oznameni  ${Hodnota_40}
  UD Overeni Oznameni  ${Hodnota_41}
  UD Overeni Oznameni  ${Hodnota_42}
  UD Overeni Oznameni  ${Hodnota_43}
  UD Overeni Oznameni  ${Hodnota_44}
  UD Overeni Oznameni  ${Hodnota_45}
  UD Overeni Oznameni  ${Hodnota_46}
  UD Overeni Oznameni  ${Hodnota_47}
  UD Overeni Oznameni  ${Hodnota_48}
  UD Overeni Oznameni  ${Hodnota_49}

Post-conditions - Zavři prohlížeč
  Close Browser


