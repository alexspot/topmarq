require 'spec_helper'

describe "Search Engine" do

  context "when made set to BMW and model set to M6" do
    before  { MainPage.open.enter_postcode('BS32 4NF').choose_made_value.choose_model_value.quick_search }
    it { expect(SearchPage.given.get_all_titles).to include_phrase("BMW M6") }
  end

  #context "when min price is 0 and max price is 500" do
  #  before { MainPage.open.enter_postcode('BS32 4NF').select_min_price('0').select_max_price('500').quick_search }
  #  it { expect(SearchPage.given.get_all_prices).to cover_range(0..500) }
  #end
  #
  #context "when search by new cars" do
  #  before { MainPage.open.enter_postcode('BS32 4NF').click_NEARLYNEW_checkbox.click_USED_checkbox.quick_search }
  #  it { expect(SearchPage.given.get_new_car_holders).to include_phrase("New car") }
  #end
end