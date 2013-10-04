class SearchPage < WebPage

  URL = '/search'
  URL_PATTERN = /#{Regexp.escape(settings.app_host)}\/?/


  def get_all_titles
    titles = all(:css,'.ps-vehicletitle').map(&:text)
    titles
  end

  def get_new_car_holders
    new_cars = all(:css,'.newcarindholder').map(&:text)
    new_cars
  end

  def get_all_prices
    search_results = all(:css,'.ps-price').map(&:text)
    prices = search_results.map do |item|
      value = item.text
      value[0] = ''
      value.to_i
    end
    prices
  end

end
