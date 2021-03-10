class Patient < ActiveRecord::Base
    has_secure_password
    validates :username, :password, presence: true
    validates :username, uniqueness: true
    has_many :appointments
    has_many :doctor, through: :appointments
end