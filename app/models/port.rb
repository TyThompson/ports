class Port < ActiveRecord::Base
  validates :game_id, presence: true
  validates :port_start, presence: true
  validates :port_end, presence: true
  validates :protocol, presence: true
  belongs_to :games
end
