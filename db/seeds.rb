# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning the database"

User.destroy_all

puts "Destroyed users successfully!"

Movie.destroy_all

puts "Destroyed movies successfully!"

List.destroy_all

puts "Destroyed Lists successfully!"

Bookmark.destroy_all

puts "Destroyed Bookmarks successfully!"

puts "Seeding starts..."

puts "Creating users..."

User.create!(email: "b.nyaoro@gmail.com", password: "123456")

puts "Created Users successfully!"

puts "Creating movies..."

Movie.create!(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
Movie.create!(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
Movie.create!(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
Movie.create!(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)
Movie.create!(title: "Grey' Anatomy", overview: "Follows the personal and professional lives of a group of doctors at Seattle’s Grey Sloan Memorial Hospital.", poster_url: "https://www.themoviedb.org/t/p/w1280/eqgIOObafPJitt8JNh1LuO2fvqu.jpg", rating: 7.0)
Movie.create!(title: "All the Old Knives", overview: "When the CIA discovers one of its agents leaked information that cost more than 100 people their lives, veteran operative Henry Pelham is assigned to root out the mole with his former lover and colleague Celia Harrison.", poster_url: "https://www.themoviedb.org/t/p/w1280/g4tMniKxol1TBJrHlAtiDjjlx4Q.jpg", rating: 7.0)
Movie.create!(title: "Blacklight", overview: "Travis Block is a shadowy Government agent who specializes in removing operatives whose covers have been exposed. He then has to uncover a deadly conspiracy within his own ranks that reaches the highest echelons of power.", poster_url: "https://www.themoviedb.org/t/p/w1280/bv9dy8mnwftdY2j6gG39gCfSFpV.jpg", rating: 7.0)
Movie.create!(title: "The Good Doctor ", overview: "Shaun Murphy, a young surgeon with autism and savant syndrome, relocates from a quiet country life to join a prestigious hospital's surgical unit. Unable to personally connect with those around him, Shaun uses his extraordinary medical gifts to save lives and challenge the skepticism of his colleagues", poster_url: "https://www.themoviedb.org/t/p/w1280/cXUqtadGsIcZDWUTrfnbDjAy8eN.jpg", rating: 7.0)
Movie.create!(title: "Suits", overview: "While running from a drug deal gone bad, Mike Ross, a brilliant young college-dropout, slips into a job interview with one of New York City's best legal closers, Harvey Specter. Tired of cookie-cutter law school grads, Harvey takes a gamble by hiring Mike on the spot after he recognizes his raw talent and photographic memory.", poster_url: "https://www.themoviedb.org/t/p/w1280/vQiryp6LioFxQThywxbC6TuoDjy.jpg", rating: 7.0)
Movie.create!(title: "Chicago P.D.", overview: "A riveting police drama about the men and women of the Chicago Police Department's District 21 who put it all on the line to serve and protect their community. District 21 is made up of two distinctly different groups: the uniformed cops who patrol the beat and go head-to-head with the city's street crimes and the Intelligence Unit that combats the city's major offenses - organized crime, drug trafficking, high profile murders and beyond.", poster_url: "https://www.themoviedb.org/t/p/w1280/onamGdLjKolUFwIW7io11IDH0uJ.jpg", rating: 7.0)
Movie.create!(title: "Bridgerton", overview: "Wealth, lust, and betrayal set in the backdrop of Regency era England, seen through the eyes of the powerful Bridgerton family.", poster_url: "https://www.themoviedb.org/t/p/w1280/luoKpgVwi1E5nQsi7W0UuKHu2Rq.jpg", rating: 8.0)
Movie.create!(title: "Game of Thrones", overview: "Seven noble families fight for control of the mythical land of Westeros. Friction between the houses leads to full-scale war. All while a very ancient evil awakens in the farthest north. Amidst the war, a neglected military order of misfits, the Night's Watch, is all that stands between the realms of men and icy horrors beyond.", poster_url: "https://www.themoviedb.org/t/p/w1280/u3bZgnGQ9T01sWNhyveQz0wH0Hl.jpg", rating: 5.0)
Movie.create!(title: "Vikings: Valhalla ", overview: "In this sequel to Vikings, a hundred years have passed and a new generation of legendary heroes arises to forge its own destiny — and make history.", poster_url: "https://www.themoviedb.org/t/p/w1280/izIMqapegdEZj0YVDyFATPR8adh.jpg", rating: 6.0)
Movie.create!(title: "Law & Order: Special Victims Unit", overview: "In the criminal justice system, sexually-based offenses are considered especially heinous. In New York City, the dedicated detectives who investigate these vicious felonies are members of an elite squad known as the Special Victims Unit. These are their stories.", poster_url: "https://www.themoviedb.org/t/p/w1280/yzMQBlirydvKp4Zgr5FbXlsrRmw.jpg", rating: 6.0)

puts "Created Movies successfully!"

puts "Creating Lists..."

List.create!(name: "Big Bang Theory", user_id: 1)
List.create!(name: "Fantasy", user_id: 1)
List.create!(name: "Romantic", user_id: 1)
List.create!(name: "Action", user_id: 1)
List.create!(name: "Thriller", user_id: 1)
List.create!(name: "Documentary", user_id: 1)

puts "Created Lists successfully!"

puts "Creating Bookmarks"

Bookmark.create!(comment: "This was added by Ben", list_id: 1, movie_id: 1, user_id: 1)
Bookmark.create!(comment: "This was added by Martin", list_id: 2, movie_id: 3, user_id: 1)
Bookmark.create!(comment: "This was added by Martin", list_id: 3, movie_id: 3, user_id: 1)
Bookmark.create!(comment: "This was added by Dan", list_id: 4, movie_id: 2, user_id: 1)

puts "Created Bookmarks successfully!"

puts "Done! Created movies, lists, bookmarks and users"
