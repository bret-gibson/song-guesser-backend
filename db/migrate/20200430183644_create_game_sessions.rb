class CreateGameSessions < ActiveRecord::Migration[6.0]
    def change
      create_table :game_sessions do |t|
        t.integer :user_id
        t.integer :points, default: 0
        t.timestamps
      end
    end
  end