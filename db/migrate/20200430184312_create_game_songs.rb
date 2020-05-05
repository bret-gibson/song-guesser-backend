class CreateGameSongs < ActiveRecord::Migration[6.0]
    def change
      create_table :game_songs do |t|
        t.references :game_session, null: false, foreign_key: true
        t.references :song, null: false, foreign_key: true
        t.boolean :correct_guess
  
        t.timestamps
      end
    end
  end