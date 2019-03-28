class Player < ApplicationRecord
    has_secure_password
    has_many :drafts
    has_many :teams, through: :drafts
    has_many :entries, through: :teams
    has_many :tournaments, through: :entries
    before_save :has_http?

    validates :name, :birth_date, :email, presence: true

    def has_http?
      img_url.match(/\A(https?:\/\/)/) ? true : Player.last.update(img_url: "http://#{img_url}") if img_url
    end

end
