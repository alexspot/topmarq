module TopMenu
  def self.included(base)
    base.class_eval do
      add_locator    :test_link,          ".search-menu-link"
    end
  end

  def click_menu
    log.info "Open menu"
    find(locator(:test_link)).click
  end
end