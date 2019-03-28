class Venue < ApplicationRecord
    has_many :tournaments
    validates :name, :location, presence: true
    before_save :has_http?

    def has_http?
      img_url.match(/\A(https?:\/\/)/) ? true : Venue.last.update(img_url: nil) if img_url
    end
end
