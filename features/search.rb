class SearchPage
  def initialize(driver)
   @driver = driver
  end
  def visit(url)
      @driver.navigate.to url
  end
  def search(txt)
      self.search_element.send_keys(txt)
      @driver.execute_script("arguments[0].click()" , self.submit_button)
  end
  def top_result_url
      @driver.find_element(css: ".g a").attribute('href')
  end
  def current_url
      @driver.current_url
  end
  def search_element
      @driver.find_element(name: 'q')
  end
  def submit_button
      @driver.find_element(name: 'btnK')
  end
end