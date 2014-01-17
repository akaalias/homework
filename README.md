# Homework

## Learning Web Development Through Integration Testing

The idea here is to use Integration Tests to only focus on the end-user outcome. 

The tests are run completely independently of whatever web-server, programming-language or framework is used to solve the 'problems' provided by the tests. 

So, this basically turns around the idea of learning to code by putting the end-user experience at the forefront and the technology used to solve the problem after. 

### An example session:

Configure your target server in ./spec/features/spec_helper:

``` 
# configure which host to call up on
Capybara.app_host = "http://localhost:3000.com"

Run an example homework 
```
rspec ./spec/features/newsletter_spec.rb
