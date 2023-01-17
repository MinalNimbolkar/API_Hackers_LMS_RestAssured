#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template


Feature: Validate GET Batch API's
 
Scenario: Get the all batchs
  
Given user has baseURI 
When  user calls "GetBatchAPI" with "GET" http request
Then the API call got success with status code 200
And "status" in response body is "OK"
And user gets response in JSON format

@tag2
 Scenario Outline: get Batach by id
  
Given user has valid "<batchId>"  
When user calls "GET" http request with "<path>" and "<batchId>"
Then the API call got success with status code 200
And "status" in response body is "OK"
And "batchId" in response body is "<batchId>"



 Scenario Outline: Get request for Batch programId 
 
When user calls "GET" http request with "<path>" and "<programId>"
Then the API call got status code "<code>"
And "status" in response body is "<res_status>"
 
   
