require 'byebug'
class Site
  URL = "https://www.google.com/"

  def initialize(browser)
    @driver = browser
  end

  def open
    @driver.manage.window.maximize
    @driver.navigate.to URL
  end

  def search(text)
    search_field.send_keys(text)
    search_button.click
  end

  def top_result
    @driver.find_element(css: ".g a")
  end

  def top_result_url
    self.top_result.attribute('href')
  end
  private

  def search_field
    @driver.find_element(name: 'q')
  end

  def search_button
    @driver.find_element(name: 'btnK')
  end

  def close
    @driver.close
  end
end # Site
