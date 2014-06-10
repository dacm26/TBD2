class Customer < ActiveRecord::Base
	validates :name, presence: true, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
	validates :nationality, presence: true, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
	validates :passport, presence: true
	validates :birth_date, presence: true
	

end
