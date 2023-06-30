class DocumentalFilm < ApplicationRecord
    validates :nombre, :synopsis, :director, presence: true
end
