Feature: Adding New Contact
  As an administrator
  So I can stay in touch with contact
  I want to store a new contact

Scenario: add a new contact
  When I go to the contact page
  And I fill in "First Name" with "John"
  And I fill in "Last Name" with "Doe"
  And I fill in "Email" with "john@example.com"
  And I fill in "Address" with "1 Some Street"
  And I fill in "Town" with "MyTown"
  And I fill in "County" with "MyCounty"
  And I fill in "Post Code" with "MC1 1AA"
  And I fill in "Telephone" with "000-0000-0000"
  Then I should see "John Doe, john@example.com, 1 Some Street, MyTown, MyCounty, MC1 1AA, 000-0000-0000"

