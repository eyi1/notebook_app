class User < ApplicationRecord
    has_many :notebooks
    has_many :notes, :through => :notebooks

    has_secure_password
end
