class Customer < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true, email: true, uniqueness: true
    validates :password, presence: true, confirmation: true
    validates :password_confirmation, presence: true
end
