*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        chrome

*** Test Cases ***
Register Operation Works Well
    [Template]    Register Operation Workflow
    1    1
    aaa    aaa
    <a href="//www.google.com/">    <a href="//www.google.com/">
    1+2+3   1+2+3

*** Keywords ***
Register Operation Workflow
    [Arguments]    ${arg}    ${expected}
    Open Application Page
    ${todo}=    Register Todo  ${arg}
    Should Be Equal    ${todo}    ${expected}
    Close Application Page

Open Application Page
    Open Browser    http://localhost:8080/index.jsp    ${BROWSER}

Register Todo
    [Arguments]    ${arg}
    Input Text    css=body > form > p > input    ${arg}
    Submit Form
    BuiltIn.Sleep	1
    ${result}=    Get Text    css=body > table > tbody > tr:last-child
    [Return]    ${result}

Close Application Page
    Close Browser
