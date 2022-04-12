class Strawberry < ApplicationRecord
	#validaciones a nivel de aplicacion
	validates :title, presence: true
	validates :opinion, presence: true
end
