class SerieTv < ApplicationRecord
    validates :nombre, :synopsis, :director, presence: true
end
