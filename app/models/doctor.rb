class Doctor < ActiveRecord::Base
    has_secure_password
    validates :username, :password, presence: true
    validates :username, uniqueness: true
    has_many :appointments
    has_many :patients, through: :appointments
end