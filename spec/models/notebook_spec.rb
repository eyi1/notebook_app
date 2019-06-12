require 'rails_helper'

RSpec.describe Notebook, :type => :model do
    subject { described_class.new(name: "name", user_id: "user_id") }
  
    it "is not valid without a name and user_id" do
      subject.name = nil
      subject.user_id = nil
      expect(subject).to_not be_valid
    end

    describe "Associations" do
        it { should have_many(:notes) }
        it { should belong_to(:user) }
    end
    
end