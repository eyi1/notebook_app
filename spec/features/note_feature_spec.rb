require 'rails_helper'

RSpec.feature "Notes", type: :feature do
    
    describe "Note List" do
    
        context "not logged in" do
          it 'does not display notes' do
            visit '/api/v1/notes'
            notes = Note.all
            expect(page).to_not have_content(notes)
          end
        end

        context "notes page" do
            it 'does display notes' do
              visit '/api/v1/notes'
               Note.all.each do |note|
              expect(page).to have_content(note.title)
              expect(page).to have_content(note.content)
            end
          end

          scenario "user visits notes page" do
            visit "api/v1/notes"
            expect(page).to have_http_status(200)
            #expect(response.status).to eq(200)          
          end

        end
    end
end
