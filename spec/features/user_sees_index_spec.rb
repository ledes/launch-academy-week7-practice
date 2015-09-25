require 'rails_helper'


feature "As an Employee Creating Cellphones" do
  context "I see the index page" do
    scenario "and see all the manufacturers" do
        motorola = FactoryGirl.create(:manufacturer)
        visit root_path
        expect(page).to have_content('Motorola')
    end
  end
end
