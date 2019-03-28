class Player < ApplicationRecord
    has_secure_password
    has_many :drafts
    has_many :teams, through: :drafts
    has_many :entries, through: :teams
    has_many :tournaments, through: :entries

    validates :name, :birth_date, :email, :password_digest, presence: true

    def age
      now = Time.now.utc.to_date
      now.year - self.birth_date.year - (now.month > self.birth_date.month || (now.month == self.birth_date.month && now.day >= self.birth_date.day) ? 0 : 1)
    end

    def self.average_age
      Player.all.sum(:age)
    end
end
