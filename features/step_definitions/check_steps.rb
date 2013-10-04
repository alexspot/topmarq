Then(/^Results should contain cars with BMW made and model M6$/) do
  expect(SearchPage.given.get_all_titles).to include_phrase("BMW M6")
end

Then(/^Results should contain cars with range of prices from (\d+) to (\d+)$/) do |min, max|
  expect(SearchPage.given.get_all_prices).to cover_range(min..max)
end

Then(/^Results should contain only new cars$/) do
  expect(SearchPage.given.get_new_car_holders).to include_phrase("New car")
end
