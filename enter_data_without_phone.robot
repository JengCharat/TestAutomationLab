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
    Input Organization    CS KKU
    Sleep    1s
    Input Email    somyod@kkumail.com
    Sleep    1s
    Submit Register
    Sleep    1s
    Title Should Be    Registration
    Element Text Should Be    id=errors    Please enter your phone number!!
    [Teardown]    Close Browser
