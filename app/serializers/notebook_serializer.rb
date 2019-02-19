class NotebookSerializer < ActiveModel::Serializer
  attributes :id, :name
  
  belongs_to :user
  has_many :notes 
end
