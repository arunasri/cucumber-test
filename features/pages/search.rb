class Site
  def initialize(browser)
    @driver = browser
  end

  def open
    @driver.manage.window.maximize
  end

  def visit(url)
    @driver.navigate.to url
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
  def current_url
    @driver.current_url
  end
  def close
    @driver.close
  end
  private

  def search_field
    @driver.find_element(name: 'q')
  end

  def search_button
    @driver.find_element(name: 'btnK')
  end

end # Site
