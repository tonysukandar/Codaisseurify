Song.destroy_all
Artist.destroy_all

bboys = Artist.create(name: "Backstreet Boys", picture: "pict 1")


songnr1 = Song.create!(song_name: "Everybody", release_year: 1998, artist: bboys)
songnr2 = Song.create!(song_name: "Show Me The Meaning Of Being Lonely", release_year: 2000, artist: bboys)
songnr3 = Song.create!(song_name: "Shape Of My Heart", release_year: 2000, artist: bboys)
songnr4 = Song.create!(song_name: "Larger Than Life", release_year: 1999, artist: bboys)
