require 'rails_helper'

RSpec.describe Notebook, :type => :model do
    subject { described_class.new(name: "name", user_id: "user_id") }
  
    # it "is valid with valid attributes" do
    #   #subject.name = "Anything"
    #   expect(subject).to be_valid
    # end
  
    it "is not valid without a name" do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    describe "Associations" do
        it { should have_many(:notes) }
        it { should belong_to(:user) }
    end

    # describe "Validations" do
    #     it { should validate_presence_of(:user) }
    #   end
    
end