require 'spec_helper'

# Feature: Product acquisition
#   As a user
#   I want to download the product
#   So I can complete my acquisition
feature 'Product acquisition' do

  # Scenario: Download the product
  #   Given I am a user
  #   When I click the 'Download' button
  #   Then I should receive a PDF file
  scenario 'Download the product' do
    user = FactoryGirl.create(:user)
    login(user.email, user.password)
    expect(page).to have_content 'Signed in successfully.'
    click_link_or_button 'Download PDF'
    expect(page.response_headers['Content-Type']).to have_content 'application/pdf'
  end

end
