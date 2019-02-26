# autosales-integrator

## Design

An API called AutosalesAPI and created using the Enterprise Integrator.
The relevant config files used in project are also located at https://github.com/larryoke/autosales-data.

## Implementation

#### GET method
This demonstrates the following EIP as mediators
1. Validator  - using an XSD
2. Transformer - using an XSLT


#### POST method
1. Validator - using an XSD
2. Iterate - Slitter EIP
3. Aggregate - Aggregate EIP


## How to test

You can test with SoapUI 5.5.0.
1. Load the project using the SoapUI project file _REST-Autosales-soapui-project.xml_
2. Start the MockService in SoapUI
3. Run test cases
