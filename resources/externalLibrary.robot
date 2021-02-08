*** Settings ***
#################################################################
#CAPTCHA
#################################################################
Documentation               Simple example using CaptchaLibrary
Library                     CaptchaLibrary          serviceUrl=sample.captcha.service.url

*** Variables ***
${sample_variable}

*** Test Cases ***
Test Case Sample One
    ${captcha}              Decode Base64 Captcha           path/to/image
    Log To Console          ${captcha}
    