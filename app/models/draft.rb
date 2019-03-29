class Draft < ApplicationRecord
  belongs_to :player
  belongs_to :team

  validates :player_id, :team_id, presence: true
  # validate :draft_must_be_unique, on: :create

  def tuid
    self.player_id.to_s + self.team_id.to_s
  end

  # def draft_must_be_unique
  #   if Draft.all.map(&:tuid).include?(self.tuid)
  #     errors.add(:discount, "can't be greater than total value")
  #   end
  # end

end
