class Team < ApplicationRecord
    has_many :drafts
    has_many :entries
    has_many :tournaments, through: :entries
    has_many :players, through: :drafts
    has_many :venues, through: :tournaments

    accepts_nested_attributes_for :players

    validates :name, presence: true

    def players_chronological
      drafts_chrono = self.drafts.sort_by {|e| e.created_at}
      drafts_chrono.map(&:player)
    end

    def players_alphabetical
      self.players.sort_by(&:name)
    end

    def self.all_alphabetical
      Team.all.sort_by(&:name)
    end

end
