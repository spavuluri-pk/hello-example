# This is a sample feature file. Please modify according to your APIs.

Feature: Product Service API
 @scenario-1
  Scenario:
    Given I query to all products "/products" 
    Then response status code for get should be "200"
    And response content type for get should be "application/json"
 @scenario-2
  Scenario:
    Given I query to product-id"/product/{id}" 
    Then response status code for get should be "200"
    And response content type for get should be "application/json"
 @scenario-3
  Scenario:
    Given I query to delete product-id "/products/{id}" 
    Then response status code delete should be "200"
    And response content type for delete should be "application/json"
 @scenario-4
  Scenario:
    Given I query to add "/products" 
    Then response status code post  should be "201"
    And response content type for post should be "application/json"
 @scenario-5
  Scenario:
  	Given I hit the Url "springbootadmin"
    Then response status code for get url should be "200", "springbootadmin"
   
 @scenario-6
  Scenario:
  	Given I hit the Url "microdashboard"
    Then response status code for get url should be "200", "microdashboard"
    
  @scenario-7
  Scenario:
  	Given I hit the Url "zipkin"
    Then response status code for get url should be "200", "zipkin"
    
  @scenario-8
  Scenario:
  	Given I hit the Url "eurekaregistry"
    Then response status code for get url should be "200", "eurekaregistry"	