Feature: Updating Contact details
  As an administrator
  So I can stay in touch with contact
  I want to update contact details

Background: contact in database

  Given the following contact exists:
  | first_name | last_name | email            | address       | town   | county   | post_code | telephone     |
  | John       | Doe       | john@example.com | 1 Some Street | MyTown | MyCounty | MC1 1AA   | 000-0000-0000 |

Scenario: updating contact
  When I go to the contact page for "John Doe"
  And I fill in "Email" with "john_doe@example.com"
  Then I should see "John Doe, john_doe@example.com, 1 Some Street, MyTown, MyCounty, MC1 1AA, 000-0000-0000"
  And when I go to contact summary page
  Then I should see "John Doe, john_doe@example.com, 1 Some Street, MyTown, MyCounty, MC1 1AA, 000-0000-0000"
  But I should note see "john@example.com"