class Notebook < ApplicationRecord
    has_many :notes
    belongs_to :user

    accepts_nested_attributes_for :notes
   
end
