module ExampleMenu
  def self.included(base)
    base.class_eval do
      add_link_locator    :test_link,          "search-link"
    end
  end

  def click_menu
    log.info "Open menu"
    click_link locator(:test_link)
  end
end