*** Settings ***
Documentation     A test suite with a single test for valid login.
Resource          resource.robot

*** Test Cases ***
Valid Login
    Open Browser To Register Page
    Sleep    1s
    Input Firstname    Somyod
    Sleep    1s
    Input Lastname    Sodsai
    Sleep    1s
    Input Email    somsri@kkumail.com
    Sleep    1s
    Input Phone    091-001-1234
    Sleep    1s
    Submit Register
    Sleep    1s
    Success Page Should Be Open
    Title Should Be    Success
    Element Text Success Should Be    Thank you for registering with us.
    Element Text Thanks Should Be    We will send a confirmation to your email soon.
    [Teardown]    Close Browser
