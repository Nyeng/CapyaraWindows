include Testhelper

When(/^at vi har en testbruker "([^"]*)"$/) do |username|
  puts username
  @username = username
  @password = "nrktestpassord"
end

When(/^vi går mot testsiden "([^"]*)"$/) do |testsite|
  Capybara.app_host = testsite
end

When(/^skal vi være utlogget fra innloggingstjenesten$/) do
  visit '/core/connect/endsession'
end

When(/^at jeg er på innloggingssiden$/) do
  visit ''
end

When(/^brukeren fullfører en innlogging mot identitetstjenesten$/) do
  fill_in 'userName', :with => @username
  fill_in 'password', :with => @password
  click_button('login-submit')
  sleep 5
end

When(/^skal jeg kunne motta følgende profildata om brukeren$/) do |table|
  verify_page_contains_fields(table: table.raw)
end
