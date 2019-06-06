require 'rails_helper'

RSpec.describe User, :type => :model do
    subject { described_class.new(name: "name", email_string: "email", password: "password") }
  
    it "is valid with valid attributes" do
      #subject.name = "Anything"
      expect(subject).to be_valid
    end
  
    it "is not valid without a name" do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without an email" do
      subject.email_string = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a password" do
      subject.password = nil
      expect(subject).to_not be_valid
    end

    describe "Associations" do
        it { should have_many(:notebooks) }
    end
end