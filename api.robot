*** Settings ***
Library               RequestsLibrary

*** Variables ***
${Base_URL}     https://jsonplaceholder.typicode.com/
    
*** Test Cases ***
Case 1 Test Get
${response}     Call Method Get API    ${Base_URL}    /posts/1
Should Be Equal As Strings    ${response.status_code}    200
log to console  ${response.json()}
${response_json}   Set Variable    ${response.json()}
log to console  -----------
log to console  ${response_json}[title]

Case 2 Test Post
${data}    Create Dictionary     userId=10  title=title test description   body=Hello Oh
${response}     Call Method Post API    ${data}    ${Base_URL}    /posts
Should Be Equal As Strings    ${response.status_code}    201
Log to console    ${response.json()}