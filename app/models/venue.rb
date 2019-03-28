class Venue < ApplicationRecord
    has_many :tournaments
    validates :name, :location, presence: true
end
