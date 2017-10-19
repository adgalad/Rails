class Person < ActiveRecord::Base
	has_many :emails
	
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :age, numericality: true, presence: true
	validates :id_number, presence: true
end

