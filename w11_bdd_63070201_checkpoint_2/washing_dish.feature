Feature: Wash dish

    Background: 
        Given a washer name 'Peach'
        Given a washer name 'Nit'



    Scenario: Peach is washing the dish
        Given the dish has already been used and now dirty
        And there are 10 dish in the sink
        When Peach washs the dish
        And Peach rinse the dish
        And Peach put it on the drying rack
        Then there are 10 clean dish on the drying rack
        And the sink should be clean

    Scenario: Nit is washing the dish
        Given the dish has already been used and now dirty
        And there are 10 dish in the sink
        When Nit washs the dish
        And Nit break the dish
        Then there are 5 broken dish in the sink