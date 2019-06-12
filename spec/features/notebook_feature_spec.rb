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
    end

    # context "logged in" do

    #   before(:each) do
    #     @user = User.last
    #     #login_as(@user, scope: :user)
    #   end

    #   it 'does display notebooks' do
    #     user_notebooks = @user.notebooks
    #     visit '/api/v1/notebooks'
    #     expect(page).to have_content(user_notebooks)
    #   end
    # end

  end
end