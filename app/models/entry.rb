class Entry < ApplicationRecord
  belongs_to :team
  belongs_to :tournament

  validates :tournament_id, :team_id, presence: true

end
