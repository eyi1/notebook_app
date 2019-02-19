class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email_string
  
  has_many :notebooks
end
