Feature:
  Test that it correctly reads the CSS rules and checks them against the HTML

  Scenario Outline: Check that simple, correct CSS file is parsed correctly
  I.e. that it holds the selectors in a usable way
    Given I run the CSS Cleaner
    Then the CSS selectors should include '<selector>'
    Examples:
      | selector |
      | h1       |
      | #foo     |
      | .bar     |

  Scenario: Check that simple, syntactically correct HTML file is parsed correctly
  I.e. that I can find elements based on HTML selectors that I know exist
    Given I run the CSS Cleaner
    Then the HTML should contain "h2"

  # I think you should set up a file in the test, then these tests are moot.

  Scenario: I should see some output on the command line when the CSS Cleaner app runs
    When I run CSS Cleaner from the command line
    Then the output should contain:
  """
  Claire's CSS Cleaner
  This CSS is used:
  #foo
  This CSS is not used:
  h1
  .bar
  """