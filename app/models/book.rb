class Book < ApplicationRecord
	validates :name ,presence: true
	validates :description ,presence: true
	has_many :readers
end
