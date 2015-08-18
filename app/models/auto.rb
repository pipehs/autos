class Auto < ActiveRecord::Base
	has_many :partes
	validates :marca, presence: true
	validates :modelo, presence: true
end
