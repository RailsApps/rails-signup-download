require 'spec_helper'

# Feature: Product Acquisition
#   As a user
#   I want to download the product
#   So I can complete my acquisition
feature 'Product Acquisition:' do

  # Scenario: Download the Product
  #   Given I am a user
  #   When I click a download button
  #   Then I should receive a PDF file
  scenario 'Download the Product' do
    visit products_path('product.pdf')
    pending('test for successful download')
  end

end
