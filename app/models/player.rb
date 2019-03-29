class Player < ApplicationRecord
    has_secure_password
    has_many :drafts
    has_many :teams, through: :drafts
    has_many :entries, through: :teams
    has_many :tournaments, through: :entries
    before_save :has_http?

    validates :name, :birth_date, :email, presence: true

    def has_http?
      img_url.match(/\A(https?:\/\/)/) ? true : Player.last.update(img_url: nil) if img_url
    end

    def age
      now = Time.now.strftime("%Y-%m-%d")[0, 4].to_i
      now - self.birth_date.to_s[0, 4].to_i
    end

    def years_playing
      now = Time.now.strftime("%Y-%m-%d")[0, 4].to_i
      now - self.start_date.to_s[0, 4].to_i
    end

    def pretty_birth_date
      self.birth_date.to_formatted_s(:long_ordinal)
    end

    def pretty_start_date
      self.start_date.to_formatted_s(:long_ordinal)
    end

end
