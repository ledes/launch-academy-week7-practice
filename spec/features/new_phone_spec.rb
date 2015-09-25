require 'rails_helper'


feature "As an Employee Creating Cellphones" do
  context "I want to record a cellphone" do
    scenario "submit a blank form and I get error message" do
      visit new_phone_path
      click_button('Submit')
      expect(page).to have_content('You have to fill the form')
    end
    scenario "enter a manufacturer" do
      manufacturer = FactoryGirl.create(:manufacturer)
      visit new_phone_path
      select('Motorola', :from => 'phone[manufacturer_id]')
      fill_in 'Year', with: '2005'
      fill_in 'Battery life', with: 'good'
      click_button('Submit')
      expect(page).to have_content('2005')
      expect(page).to have_content('Phone added')
    end
  end
end
