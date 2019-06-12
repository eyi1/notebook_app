require 'rails_helper'
require 'capybara/rspec'

RSpec.feature "Notebooks", type: :feature do
   
  describe "Notebook List" do
    
    context "not logged in" do
      it 'does not display notebooks' do
        visit "/api/v1/notebooks"
        notebooks = Notebook.all
         expect(page).to_not have_content(notebooks)
      end

      scenario "user visits notebooks page" do
        visit "api/v1/notebooks"
        expect(page).to_not have_http_status(200)
        #expect(response.status).to eq(200)          
      end
    end

  end
end