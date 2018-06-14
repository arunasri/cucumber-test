require 'selenium-webdriver'
require 'minitest'


module SiteHelper
  def site
    @site ||= (
      Site.new(Selenium::WebDriver.for(:firefox))
    )
  end
end

World(Minitest::Assertions)
World(SiteHelper)