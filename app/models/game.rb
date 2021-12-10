class Game < ApplicationRecord
    belongs_to :creator, class_name: "User", foreign_key: "creator_id"
    belongs_to :opponent, class_name: "User", foreign_key: "opponent_id"
    belongs_to :winner, class_name: "User", foreign_key: "winner_id", optional: true
    belongs_to :player_turn, class_name: "User", foreign_key: "player_turn_id", optional: true
    validates :player_turn, presence: true, unless: :winner
    validates :winner, presence: true, unless: :player_turn
end
