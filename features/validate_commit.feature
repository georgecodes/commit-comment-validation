Feature: Validate commit comment

  Scenario: Issue number missing   

    Given the commit message "this is a terrible comment"
    Then it should not have an issue number in it

  Scenario: Issue number present   

    Given the commit message "this is a comment [ISSUE-380] with an issue number in it"
    Then it should have an issue number in it

  Scenario: Actual commit comment

    Given the github repository "georgecodes/simple-spring-app"
    
    When I examine the most recent commit comment
    Then it should have an issue number in it

