require "test_helper"
require 'watir'

class TestOpenPageWatir < ActionDispatch::IntegrationTest
  def setup
    @browser = Watir::Browser.new
  end

  def test_open_page
    @browser.goto new_calculation_testable_class_index_path
  end

  def teardown
    @browser.close
  end
end