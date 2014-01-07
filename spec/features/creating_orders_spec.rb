require 'spec_helper'

feature "placing orders" do
  scenario "a customer can place an order" do
    visit new_order_path

    fill_in "Name", with: "John Smith"
    fill_in "Phone", with: "295-8267"

    click_button 'Submit Order'

    expect(page).to have_content("Your order has been submitted.")
  end
end
