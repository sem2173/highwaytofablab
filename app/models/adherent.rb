class Adherent < ActiveRecord::Base
	
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :firstname, presence: true
	validates :lastname, presence: true
	validates :phone, presence: true
	validates :user_email, presence: true, format: { with: VALID_EMAIL_REGEX }
	
end
