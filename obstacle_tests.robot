*** Settings ***
Resource            resource.robot

Suite Setup         Prepare Browser
Suite Teardown      Close Browser 

*** Test Cases ***

Valid Login
    Input Username    standard_user
    Input Password    secret_sauce
    Submit Credentials

Item to cart
    Add item to cart  bike-light

To shopping cart
    To shopping cart
    
Insert info
    Input first   Sampsa
    Input last    Jarvinen
    Input zip     33540
    Continue

Finish
    Finish
    Verify Solved

