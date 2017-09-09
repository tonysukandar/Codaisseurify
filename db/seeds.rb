Song.destroy_all
Artist.destroy_all

# to do pictures
bboys = Artist.create(name: "Backstreet Boys", picture: "pict 1")
mbolton = Artist.create(name: "Micheal Bolton", picture: "pict 2")
stwain = Artist.create(name: "Shania Twain", picture: "pict 3")
queen = Artist.create(name: "Queen", picture: "pict 4")
metal = Artist.create(name: "Metallica", picture: "pict 5")
bjoel = Artist.create(name: "Billy Joel", picture: "pict 6")


songnr1 = Song.create!(song_name: "Everybody", release_year: 1998, genre: "Pop", artist: bboys)
songnr2 = Song.create!(song_name: "Show Me The Meaning Of Being Lonely", release_year: 2000, genre: "Pop", artist: bboys)
songnr3 = Song.create!(song_name: "Shape Of My Heart", release_year: 2000, genre: "Pop", artist: bboys)
songnr4 = Song.create!(song_name: "Larger Than Life", release_year: 1999, genre: "Pop", artist: bboys)

songnr5 = Song.create!(song_name: "How Am I Supposed To Live Without You", release_year: 1990, genre: "Slow Rock", artist: mbolton)
songnr6 = Song.create!(song_name: "Love Is A Wonderful Thing", release_year: 1991, genre: "Slow Rock", artist: mbolton)
songnr7 = Song.create!(song_name: "When A Man Loves A Woman", release_year: 1991, genre: "Slow Rock", artist: mbolton)

songnr8 = Song.create!(song_name: "You're Still The One", release_year: 1989, genre: "Country Rock", artist: stwain)
songnr9 = Song.create!(song_name: "Forever And For Always", release_year: 2003, genre: "Country Rock", artist: stwain)
songnr10 = Song.create!(song_name: "Man! I Feel Like A Woman!", release_year: 1999, genre: "Country Rock", artist: stwain)
songnr11 = Song.create!(song_name: "That Don't Impress Me Much", release_year: 1999, genre: "Country Rock", artist: stwain)

songnr12 = Song.create!(song_name: "Another One Bites The Dust", release_year: 1980, genre: "Rock", artist: queen)
songnr13 = Song.create!(song_name: "Bohemian Rhapsody", release_year: 1992, genre: "Rock", artist: queen)
songnr14 = Song.create!(song_name: "KILLER QUEEN", release_year: 1975, genre: "Rock", artist: queen)
songnr15 = Song.create!(song_name: "Radio Ga-Ga", release_year: 1984, genre: "Rock", artist: queen)

songnr16 = Song.create!(song_name: "Until It Sleeps", release_year: 1996, genre: "Hard Rock", artist: metal)
songnr17 = Song.create!(song_name: "Enter Sandman", release_year: 1991, genre: "Hard Rock", artist: metal)
songnr18 = Song.create!(song_name: "The Memory Remains", release_year: 1997, genre: "Hard Rock", artist: metal)
songnr19 = Song.create!(song_name: "Nothing Else Matters", release_year: 1992, genre: "Hard Rock", artist: metal)

songnr20 = Song.create!(song_name: "We Didn't Start The Fire", release_year: 1986, genre: "Rock", artist: bjoel)
songnr21 = Song.create!(song_name: "The River Of Dreams", release_year: 1993, genre: "Rock", artist: bjoel)
songnr22 = Song.create!(song_name: "Uptown Girl", release_year: 1983, genre: "Rock", artist: bjoel)
songnr23 = Song.create!(song_name: "You May Be Right", release_year: 1980, genre: "Rock", artist: bjoel)
