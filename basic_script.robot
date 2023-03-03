*** Settings ***
Documentation     Basic Script  \n\n
...               Description: This is a sample testcase  \n\n
...               Procedure:   \n\n
                  01)   FIRST TEST - PRINT SOMETHING ON CONSOLE  \n\n 
                  02)   SECOND TEST - ADD TWO NUMBER AND PRINT ANSWER ON CONSOLE
                  
# Replace the following tags with relevant information to the test case
# Force Tags        <Customer>   <Platform>   <OS>   <Feature>

# CXTA
Library  CXTA
Resource  cxta.robot

# Include all the keywords from the opensource libraries from robot framework:
# http://robotframework.org/robotframework/#standard-libraries
Library     String
Library     BuiltIn
Library     Dialogs
Library     DateTime
Library     Collections
Library     OperatingSystem

# Update/uncomment the line below with the file used or delete if not applicable
# Variables   /path-to/variable_file.yaml

# Update/uncomment the line below with the file used or delete if not applicable
# Resource    /path-to/keyword_file.robot

Suite Setup     Run Keywords
...             load testbed

Suite Teardown      Run Keywords
...                 Disconnect From All Devices

*** Test Cases ***
1. FIRST TEST - PRINT SOMETHING ON CONSOLE
    Log  HELLO WORLD!   console=true
    
2. SECOND TEST - ADD TWO NUMBER AND PRINT ANSWER ON CONSOLE
    ${result}=  Evaluate   5+6
    IF  ${result} == 11
        Log  Correct
    ELSE 
        FAIL  The addition is not correct
    END

