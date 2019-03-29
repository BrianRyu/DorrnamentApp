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

    def teams_chronological
      entries_chrono = self.entries.sort_by {|e| e.created_at}
      entries_chrono.map(&:team)
    end

    def teams_alphabetical
      self.teams.sort_by(&:name)
    end

end
