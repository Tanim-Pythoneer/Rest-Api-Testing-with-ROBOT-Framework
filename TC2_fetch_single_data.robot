*** Settings ***
Library    RequestsLibrary

*** Variables ***
${APP_BASE_URL}  http://thetestingworldapi.com/
${STUDENT_ID}  101
*** Test Cases ***
TC002_Fetch_Student_Details_By_Id
    create session    FetchData     ${APP_BASE_URL}
    ${response}=  get request    FetchData        api/studentsDetails/${STUDENT_ID}
    should be equal as strings    ${response.status_code}  200
    #log to console   ${response.status_code}
    #log to console    ${response.content}