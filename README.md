# autosales-integrator

## Design and Implementation

An API called AutosalesAPI and created using the Enterprise Integrator, Eclipse IDE and Eclipse plugins.
The relevant config files used in project are also located at https://github.com/larryoke/autosales-data.
A very basic and simple autosales API for searching and filtering a list of cars.

AutosalesAPI runs at localhost:8280

#### GET method
```
GET /autosales[?make={make}][&model={model}][&version={version}] HTTP/1.1
Host: localhost:8280
Accept: application/xml
```
This demonstrates the following EIP as mediators
1. Filter - for achieving a "if-else" control structure
2. Validate  - uses an XSD to validate the result from endpoint
3. Transformer - uses an XSLT to filter search results based on the query parameters


#### POST method
```
POST /autosales/sales/news HTTP/1.1
Host: localhost:8280
Accept: application/xml
```
1. Validator - uses an XSD to validate the search request
2. Iterate - Slitter EIP to split data or POST request before sending to the endpoint
3. Aggregate - Aggregate EIP to aggregate individual results coming from endpoint postback


## How to test

You can test with SoapUI 5.5.0.
1. Load the project using the SoapUI project file _REST-Autosales-soapui-project.xml_
2. Start the MockService in SoapUI. The MockService would run at _localhost:8080_
3. Run positive and negative test cases
