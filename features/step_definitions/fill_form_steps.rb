When(/^I enter postcode (\w+)$/) do |postcode|
  MainPage.given.enter_postcode(postcode)
end

And(/^I specify made to BMW and mark to M6$/) do
  MainPage.given.choose_made_value.choose_model_value
end

And(/^I specify minimum price to (\d+) and maximum price to (\d+)$/) do |min, max|
  MainPage.given.select_min_price(min).select_max_price(max)
end

And(/^I uncheck USED and NEARLY_NEW checkboxes$/) do
  MainPage.given.click_NEARLYNEW_checkbox.click_USED_checkbox
end