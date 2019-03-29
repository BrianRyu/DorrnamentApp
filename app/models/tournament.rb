class Tournament < ApplicationRecord
    has_many :entries
    belongs_to :venue
    has_many :teams, through: :entries
    has_many :drafts, through: :teams
    has_many :players, through: :drafts

    validates :name, :date, presence: true

    def pretty_date
      self.date.to_formatted_s(:long_ordinal)
    end

end
