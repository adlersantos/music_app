# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
dt = Band.create!(name: "Dream Theater")
dgm = Band.create!(name: "DGM")
sx = Band.create!(name: "Symphony X")

awake = Album.create!(band_id: dt.id, title: "Awake")
chaos = Album.create!(band_id: dt.id, title: "Systematic Chaos")
bcsl = Album.create!(band_id: dt.id, title: "Black Clouds and Silver Linings")
odyssey = Album.create!(band_id: sx.id, title: "The Odyssey")
paradise = Album.create!(band_id: sx.id, title: "Paradise Lost")
momentum = Album.create!(band_id: dgm.id, title: "Momentum")

theo = Track.create!(name: "The Odyssey", album_id: odyssey.id,
  lyrics: "This is The Odyssey")
ero = Track.create!(name: "Erotomania", album_id: awake.id,
  lyrics: "This is Erotomania")
tuscany = Track.create!(name: "The Count of Tuscany", album_id: bcsl.id,
  lyrics: "This is The Count of Tuscany")
serpent = Track.create!(name: "The Serpent's Kiss", album_id: paradise.id,
  lyrics: "This is the The Serpent's Kiss")
babylon = Track.create!(name: "Walls of Babylon", album_id: paradise.id,
  lyrics: "This is Walls of Babylon")
silent = Track.create!(name: "The Silent Man", album_id: awake.id,
  lyrics: "This is The Silent Man")
reason = Track.create!(name: "Reason", album_id: momentum.id,
  lyrics: "This is Reason")
eve = Track.create!(name: "Eve of Seduction", album_id: paradise.id,
  lyrics: "This is Eve of Seduction")
presence = Track.create!(name: "In the Presence of Enemies", album_id: chaos.id,
  lyrics: "This In the Presence of Enemies")
