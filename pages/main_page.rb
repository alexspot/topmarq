require_relative "top_menu"

class MainPage < WebPage
  include TopMenu
  URL = '/'
  URL_PATTERN = /#{Regexp.escape(settings.app_host)}\/?/

  add_locator :checkbox_bar, '.ps-searchcheckboxes'
  add_field_locator :postcode_field, 'postcode'
  add_locator :made_field_option, xpath: "//select[@id='makeOptions']/option[@value='bmw']"
  add_locator :model_field_option, xpath: "//select[@id='modelOptions']/option[@value='m6']"

  add_locator :made_field, 'makeOptions'
  add_locator :model_field, 'modelOptions'
  add_locator :search_button, '.ps-searchbutton'
  add_locator :USED_checkbox, 'oneSearchAdUsed'
  add_locator :NEARLYNEW_checkbox, 'oneSearchAdNearlyNew'


  def enter_postcode(data)
    fill_in field_locator(:postcode_field), :with => data
    puts "[ACTION] Activate checkbox menu"
    find(locator(:checkbox_bar)).click
    MainPage.given
  end

  def choose_made_value
    puts "[ACTION] Set made to BMW"
    made_value = find(locator(:made_field_option)).text
    select(made_value, :from => locator(:made_field))
    MainPage.given
  end

  def choose_model_value
    puts "[ACTION] Set model to M6"
    model_value = find(locator(:model_field_option)).text
    select(model_value, :from => locator(:model_field))
    MainPage.given
  end

  def quick_search
    puts "[ACTION] Click submit button"
    find(locator(:search_button)).click
    SearchPage.given
  end

  def select_min_price(value)
    puts "[ACTION] Select min price"
    within '#searchVehiclesMinPriceSelectField' do
      find("option[value='#{value}']").click
    end
  MainPage.given
  end

  def select_max_price(value)
    puts "[ACTION] Select max price"
    within '#searchVehiclesMaxPriceSelectField' do
      find("option[value='#{value}']").click
    end
    MainPage.given
  end

  def click_NEARLYNEW_checkbox
    puts "[ACTION] Click NEARLY NEW checkbox"
    uncheck(locator(:NEARLYNEW_checkbox))
    MainPage.given
  end

  def click_USED_checkbox
    puts "[ACTION] Click USED checkbox"
    uncheck(locator(:USED_checkbox))
    MainPage.given
  end
end
