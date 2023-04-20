Feature: Login

    Background: 
        Given a usercase1 is 'standard_user'
        And a usercase2 is 'locked_out_user'
        And a usercase3 is 'problem_user'
        And a usercase4 is 'performance_glitch_user'
        And all user password is 'secret_code'
        And a usercase5 is 'blank'
        And a usercase6 is 'wrong'

    Scenario: No username
        Given I put a username as blank
        And I put a password as secret_code
        Then I should see 'Username is required'

    Scenario: No password
        Given I put a username as standard_user, locked_out_user, problem_user, performance_glitch_user
        And I put a password as blank
        Then I should see 'Password is required'

    Scenario: Wrong username or password
        Given I put a username or password as wrong
        Then I should see 'Username and password do not match any user in this service'

    Scenario: Standard_user login
        Given I put a username as standard_user
        And I put a password as secret_code
        Then I should pass the login process
        And I should see the product page

    Scenario: Locked_out_user login
        Given I put a username as locked_out_user
        And I put a password as secret_code
        Then I should see 'Sorry, this user has been locked out.'

    Scenario: Problem_user login
        Given I put a username as problem_user
        And I put a password as secret_code
        Then I should pass the login process
        And I should see the product page
        But all product are not load

    Scenario: Performance_glitch_user login
        Given I put a username as performance_glitch_user
        And I put a passowrd as secret_code
        Then I should pass the login process
        And I should see the product page
        But the performance is really slow

        