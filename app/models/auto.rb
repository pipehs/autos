class Auto < ActiveRecord::Base
	has_many :partes
	validates :marca, presence: true
	validates :modelo, presence: true
	validates :modelo, :uniqueness => {:message => "ingresado ya existe"} #verifica que no se repita la marca
end
