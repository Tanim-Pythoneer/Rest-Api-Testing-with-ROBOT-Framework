*** Settings ***
Library    RequestsLibrary




*** Variables ***
${BASE_URL}  http://thetestingworldapi.com/


*** Test Cases ***
TC001_Get_Requests
    create session    Get_Students_Details      ${BASE_URL}
    ${response}=  get request    Get_Students_Details     api/studentsDetails
    log to console    ${response.status_code}
    log to console    ${response.content}