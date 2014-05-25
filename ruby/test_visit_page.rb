require 'minitest/autorun'
require 'capybara'

class TestVisitThesisPage < Minitest::Test
  include Capybara::DSL

  def setup
    Capybara.current_driver = Capybara.javascript_driver # :selenium by default
  end

  def test_visit_lu
    visit "https://github.com/lindastepanuka"
    click_link "Repositories"
    fill_in 'your-repos-filter', with: "bd"
    click_button "Search"
    click_link "bd"
    assert page.has_content?('Bachelor thesis project by Linda Stepanuka, 2014')
  end

  def teardown
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end
end