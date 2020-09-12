*** Settings ***
Library    RequestsLibrary


*** Variables ***
${BASE_URL}  http://thetestingworldapi.com/


*** Test Cases ***
TC_003 Create New Resource
    create session    AddData  ${BASE_URL}
    &{body}=  create dictionary    first_name=Tanim  middle_name=Showkat  last_name=Kamal  date_of_birth=02/08/1985
    &{header}=  create dictionary  Content-Type=application/json
    ${response}=  post request    AddData     api/studentsDetails   data=${body}  headers=${header}
    should be equal as strings  ${response.status_code}    201
    log to console  ${response.status_code}
    log to console    ${response.content}


