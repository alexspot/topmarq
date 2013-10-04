Given(/^Home page$/) do
  MainPage.open
end

And(/^I click submit button on Main page$/) do
  MainPage.given.quick_search
end