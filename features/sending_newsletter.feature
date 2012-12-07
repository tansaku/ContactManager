Feature: Sending Newsletter
  As an administrator
  So that I can update contacts about our activities
  I want to send newsletter to a subset of the contacts


Background: contact in database

  Given the following contact exists:
  | first_name | last_name | email            | address       | town   | county   | post_code | telephone     |
  | John       | Doe       | john@example.com | 1 Some Street | MyTown | MyCounty | MC1 1AA   | 000-0000-0000 |

Scenario: sending newsletter to john
  When I go to the contact summary page
  And I select "john_doe@example.com"
  And press "Create Newsletter"
  Then I should be on newsletter page
  And I fill in "newsletter body" with "Some really cool news"
  And I press "Send"
  Then I should see "sent newsletter to john@example.com"