# Homework

## Learn Website Coding Through Testing

Use pre-made integration tests to learn how to code functional websites by focussing primarily on "how it should work" and only secondly on "how this is built".

The tests are run completely independently of whatever web-server, programming-language or framework is used to solve the 'problems' provided by the tests. 

It is left to the user to select server, technology, language etc. to solve the problem at hand.

This basically turns around the idea of learning to code by putting the end-user experience at the forefront and the technology used to solve the problem after. 

### An example session:

Make sure you have all gems installed by running bundler

```
bundle install
```

Configure your target server in ./spec/features/spec_helper:

``` 
# configure which host to call up on
Capybara.app_host = "http://localhost:3000.com"
```

Now, run the newsletter test (Automatically a browser will pop up)

```
rspec ./spec/features/newsletter_spec.rb
```

See it fail

```
Failure/Error: expect(page).to have_content "Sign up"
```

Check out the test (https://github.com/akaalias/homework/blob/master/spec/features/newsletter_spec.rb) and *begin "fixing"* the tests by implementing a web page (again, *in whatever language, method and server you want*) that has a button called "Sign up"

```
[...]
<input type="submit" value="Sign up">
[...]
```