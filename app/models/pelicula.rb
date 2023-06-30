class Pelicula < ApplicationRecord
    validates :nombre, :synopsis, :director, presence: true
end
