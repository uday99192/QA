Library           SeleniumLibrary
Suite Setup       Start Selenium
Suite Teardown    Close All Browsers
${FRONTEND_URL}   http://<frontend-nodeport-url>
Verify Frontend Displays Backend Message
    Open Browser    ${FRONTEND_URL}    chrome
    Wait Until Element Is Visible    xpath=//div[@id='greeting']    10s
    ${message}=    Get Text    xpath=//div[@id='greeting']
    Should Be Equal    ${message}    Hello, World!
