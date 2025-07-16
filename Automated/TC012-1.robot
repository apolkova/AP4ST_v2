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

TC012-1 - Ověření, že oznámení na Úřední desce mají název a datum
  [Tags]  TS004  TC012-1  FrontEnd
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_2}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_3}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_4}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_5}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_6}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_7}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_8}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_9}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_10}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_11}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_12}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_13}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_14}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_15}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_16}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_17}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_18}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_19}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_20}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_21}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_22}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_23}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_24}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_25}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_26}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_27}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_28}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_29}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_30}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_31}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_32}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_33}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_34}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_35}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_36}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_37}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_38}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_39}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_40}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_41}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_42}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_43}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_44}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_45}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_46}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_47}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_48}
  UD Oznameni Obsahuje Nazev a Datum  ${Hodnota_49}

Post-conditions - Zavři prohlížeč
  Close Browser


