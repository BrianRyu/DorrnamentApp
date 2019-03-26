class Tournament < ApplicationRecord
    has_many :entries
    belongs_to :venue
    has_many :teams, through: :entries
    has_many :drafts, through: :teams
    has_many :players, through: :drafts
end
