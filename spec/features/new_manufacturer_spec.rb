require 'rails_helper'


feature "As an Employee Creating Cellphones" do
  context "I want to record a cellphone manufacturer" do
    scenario "submit a blank form and I get error message" do
      visit new_manufacturer_path
      click_button('Submit')
      expect(page).to have_content('You have to fill the form')
    end
    scenario "enter a manufacturer" do
      visit new_manufacturer_path
      fill_in 'Name', with: 'Samsung'
      fill_in 'Country', with: 'USA'
      click_button('Submit')
      expect(page).to have_content('Samsung')
      expect(page).to have_content('Manufacturer added')
    end
  end
end
