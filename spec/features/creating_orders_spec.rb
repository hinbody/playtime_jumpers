require 'spec_helper'

feature "placing orders" do
  before do
    visit new_order_path
  end

  scenario "a customer can place an order" do

    fill_in "First Name", with: "John"
    fill_in "Last Name", with: "Smith"
    fill_in "Phone", with: "295-8267"

    click_button 'Submit Order'

    expect(page).to have_content("Your order has been submitted.")
  end

  scenario "First, Last names, and phone cannot be blank" do
    click_button 'Submit Order'

    expect(page).to have_content("First name can't be blank")

    fill_in "First Name", with: "John"

    expect(page).to have_content("Last name can't be blank")

    fill_in "Last Name", with: "Smith"

    expect(page).to have_content("Phone can't be blank")
  end
end
