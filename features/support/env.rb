require 'selenium-webdriver'
require 'minitest'

module SiteHelper
  def site
      case ENV['BROWSER']
      when 'ie', 'Internet Explorer'
        browser = :ie
      when 'ff', 'Firefox'
        browser = :firefox
      when 'chrome'
        browser = :chrome
      else
        browser = :chrome
    end
    @site ||= (
      Site.new(Selenium::WebDriver.for(browser))
    )
  end
end

World(Minitest::Assertions)
World(SiteHelper)