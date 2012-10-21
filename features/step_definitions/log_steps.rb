Given /^I am a website visitor$/ do
  true
end
When /^I go to the home page$/ do
  visit('/')
end

When /^I go to the login page$/ do
  visit('/log_in')
end

Then /^I should see "([^"]*)"$/ do |text|
  assert page.has_content?(text)
end


