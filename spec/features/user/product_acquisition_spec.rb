require 'spec_helper'

# Feature: Product Acquisition
#   As a user
#   I want to download the product
#   So I can complete my acquisition
feature 'Product Acquisition' do

  # Scenario: Download a PDF
  #   Given I am a user
  #   When I click the 'Download' button
  #   Then I should receive a PDF file
  scenario 'Download a PDF' do
    user = FactoryGirl.create(:user)
    login(user.email, user.password)
    expect(page).to have_content 'Signed in successfully.'
    click_link_or_button 'Download PDF'
    expect(page.response_headers['Content-Type']).to have_content 'application/pdf'
  end

end
