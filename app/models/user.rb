class User < ApplicationRecord
    has_many :notebooks
    has_many :notes, :through => :notebooks
    
    has_secure_password
    #accepts_nested_attributes_for :notebooks, :notes

    validates :email_string, uniqueness: true, presence: true
    validates :password_digest, presence: true, length: { minimum: 6 }
end
