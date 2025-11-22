
puts "Cleaning the seeds"
Bookmark.destroy_all
Movie.destroy_all
List.destroy_all


wonder = Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)

shawshank = Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)

titanic = Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)

ocean = Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)


puts "#{Movie.count} movies created"


action = List.create( name: "Action")
horreur = List.create( name: "Horreur")
comedie = List.create( name: "Comédie")
scifi = List.create( name: "Sci-FI")

puts "#{List.count} lists created"

Bookmark.create!( comment: "Incredible 1", movie_id: wonder.id, list_id: action.id)
Bookmark.create( comment: "Incredible 2", movie_id: ocean.id, list_id: action.id)
Bookmark.create( comment: "Incredible 3", movie_id: shawshank.id, list_id: horreur.id)
Bookmark.create( comment: "Incredible 4", movie_id: titanic.id, list_id: horreur.id)
Bookmark.create( comment: "Incredible 5", movie_id: titanic.id, list_id: scifi.id)
Bookmark.create( comment: "Incredible 6", movie_id: wonder.id, list_id: comedie.id)

puts "#{Bookmark.count} bookmarks created"
