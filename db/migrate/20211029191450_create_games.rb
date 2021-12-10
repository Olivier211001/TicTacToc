class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.text :game_data
      t.references :creator, foreign_key: {to_table: "users"}, null: false
      t.references :opponent, foreign_key: {to_table: "users"}, null: false
      t.references :winner, foreign_key: {to_table: "users"}
      t.references :player_turn, foreign_key: {to_table: "users"}    
      t.timestamps
    end
  end
end
