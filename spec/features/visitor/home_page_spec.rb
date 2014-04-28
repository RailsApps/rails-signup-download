require 'spec_helper'

# Feature: Home Page
#   As a visitor
#   I want to visit a home page
#   So I can learn more about the website
feature 'Home Page:' do

  # Scenario: Visit the Home Page
  #   Given I am a visitor
  #   When I visit the home page
  #   Then I should see "Home"
  scenario 'Visit the Home Page' do
    visit root_path
    expect(page).to have_content 'Home'
  end

end
