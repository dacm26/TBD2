class Customer < ActiveRecord::Base
	validates :name, presence: true
	validates :email, presence: true
	validates :nationality, presence: true
	validates :passport, presence: true
	validates :birth_date, presence: true
	has_many :tickets

end
