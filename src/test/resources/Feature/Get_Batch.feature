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
 
   
