class Entry < ApplicationRecord
  belongs_to :team
  belongs_to :tournament
end
