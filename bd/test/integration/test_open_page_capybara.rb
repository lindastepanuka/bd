require "test_helper"
require 'capybara'

class TestOpenPageCapybara < ActionDispatch::IntegrationTest
  def test_open_page
    visit new_calculation_testable_class_index_path
  end
end
