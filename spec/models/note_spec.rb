require 'rails_helper'

RSpec.describe Note, :type => :model do
    subject { described_class.new(title: "title", notebook_id: "notebook_id") }
  
    it "is not valid without a title" do
      subject.title = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a content" do
        subject.content = nil
        expect(subject).to_not be_valid
    end

    describe "Associations" do
        it { should belong_to(:notebook) }
    end 
end