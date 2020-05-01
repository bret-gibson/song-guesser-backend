        # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Song.destroy_all
GameSession.destroy_all
GameSong.destroy_all


song1 = Song.create(title: 'Circles', artist: 'Post Malone', genre: 'Pop', source: 'https://cdns-preview-d.dzcdn.net/stream/c-df36f056f3f9770ab7b7b466e32975fd-5.mp3', dummy: false)
song2 = Song.create(title: 'Say So', artist: 'Doja Cat', genre: 'Pop', source: 'https://cdns-preview-7.dzcdn.net/stream/c-7bc96d31b485a05a8867d0f957ff8649-3.mp3', dummy: false)
song3 = Song.create(title: 'Blinding Light', artist: 'The Weeknd', genre: 'Electro-wave', source: 'https://cdns-preview-0.dzcdn.net/stream/c-0cb3c26f5c0be8b37d90560955431118-4.mp3', dummy: false)
song4 = Song.create(title: 'The Less I Know the Better', artist: 'Tame Impala', genre: 'Contemporary R&B', source: 'https://cdns-preview-a.dzcdn.net/stream/c-ae8f32367cb3c4fcbb60ca892f11297c-2.mp3', dummy: false)
song5 = Song.create(title: 'When You Were Young', artist: 'The Killers', genre: 'Alternative Rock', source: 'https://cdns-preview-c.dzcdn.net/stream/c-ca6ba727fefad4f03d2ab55ed6fc471c-4.mp3', dummy: false)

song6 = Song.create(title: "Last Nite", artist: "The Strokes", genre: "Alternative Rock", source: "", dummy: true)
song7 = Song.create(title: "Lonely Boy", artist: "The Black Keys", genre: "Blues Rock", source: "", dummy: true)
song8 = Song.create(title: "Slow Dancing in the Dark", artist: "Joji", genre: "R&B", source: "", dummy: true)
song9 = Song.create(title: "Do I Wanna Know?", artist: "Arctic Monkeys", genre: "Alternative Rock", source: "", dummy: true)
song10 = Song.create(title: "Toosie Slide", artist:"Drake" , genre: "Hip-Hop", source: "", dummy: true)


game1 = GameSession.create()
game2 = GameSession.create()
game3 = GameSession.create()
game4 = GameSession.create()


gamesong1 = GameSong.create(game_session: game1, song: song1, correct_guess: false)
gamesong2 = GameSong.create(game_session: game2, song: song2, correct_guess: false)
gamesong3 = GameSong.create(game_session: game3, song: song3, correct_guess: false)
gamesong4 = GameSong.create(game_session: game4, song: song4, correct_guess: false)
