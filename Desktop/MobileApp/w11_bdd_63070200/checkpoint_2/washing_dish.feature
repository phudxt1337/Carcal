Feature: Washing dishes

    Scenario: Washing a dish
        Given There are 10 dirty dishes in the sink
        When I washed a dish
        Then There are 9 dirty dishes

    Scenario: Washing all dishes
        Given There are 10 dirty dishes in the sink
        When I put all dirty dishes in the dish washer
        And the dish washer is powered
        And I start the machine
        Then I should see all dishes are getting cleaned

    Scenario: Breaking a dish
        Given There are 10 dirty dishes in the sink
        When I pick one of dishes up
        And I accidentally drop a dish
        Then I should see a dish broke