class Patient < ActiveRecord::Base
    has_secure_password
    validates :email, :password_digest, presence: true
    validates :email_confirmation, presence: true
    validates :email, confirmation: { case_sensitive: false }
    validates :email, confirmation: true
    has_many :appointments
    has_many :doctor, through: :appointments
end