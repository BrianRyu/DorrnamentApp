class Team < ApplicationRecord
    has_many :drafts
    has_many :entries
    has_many :tournaments, through: :entries
    has_many :players, through: :drafts
    has_many :venues, through: :tournaments

    validates :name, presence: true
end
