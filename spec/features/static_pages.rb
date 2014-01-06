require 'spec_helper'

feature 'Static Pages' do
  scenario "can visit root page" do
    visit '/'

    expect(page).to have_content('Michiana\'s home for bounce house rentals')
  end

  scenario "can visit contact page" do
    visit 'contact'
end
