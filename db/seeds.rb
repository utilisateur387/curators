# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artwork.destroy_all
puts "cleaning 1"
Artist.destroy_all
puts "cleaning 2"
Collection.destroy_all
puts "cleaning 3"
User.destroy_all
puts "cleaning 4"

 puts "Creating Artists"
 leonardo = Artist.create(name: "Leonardo Da Vinci", bio: "")
 bansky = Artist.create(name: "Bansky", bio: "")
 caravage = Artist.create(name: "Caravage", bio: "")
 botticelli = Artist.create(name: "Botticelli", bio: "")
 donatello = Artist.create(name: "Donatello", bio: "")
 vermeer = Artist.create(name: "Johannes Vermeer", bio: "")
 picasso = Artist.create(name: "Pablo Picasso", bio: "")
 delacroix = Artist.create(name: "Eugène Delacroix", bio: "")
 renoir = Artist.create(name: "Pierre Auguste Renoir", bio: "")
 van = Artist.create(name: "Vincent Von Gogh", bio: "")
 kooning = Artist.create(name: "Willem de Kooning", bio: "")

 puts "Artists Created"

 puts "Creating Users"
 pierre = User.new(name: "Pierre", username: "pierrot", email: "pierre@pierre.org", password: "123456")
 file = File.open(Rails.root.join('db/seeds/users/pierre.jpg'))
 pierre.photo.attach(io: file, filename: 'pierre.jpg', content_type: 'image/jpg')
 pierre.save!

 jean = User.new(name: "Jean", username: "jeannot", email: "jean@jean.org", password: "123456")
 file = File.open(Rails.root.join('db/seeds/users/jean.jpg'))
 jean.photo.attach(io: file, filename: 'jean.jpg', content_type: 'image/jpg')
 jean.save!

 jacques = User.new(name: "Jacques", username: "jacot", email: "jacques@jacques.org", password: "123456")
 file = File.open(Rails.root.join('db/seeds/users/jacques.jpg'))
 jacques.photo.attach(io: file, filename: 'jacques.jpg', content_type: 'image/jpg')
 jacques.save!

 mathieu = User.new(name: "Mathieu", username: "mat", email: "mathieu@mathieu.org", password: "123456")
 file = File.open(Rails.root.join('db/seeds/users/mathieu.jpg'))
 mathieu.photo.attach(io: file, filename: 'mathieu.jpg', content_type: 'image/jpg')
 mathieu.save!

 thomas = User.new(name: "Thomas", username: "tom", email: "thomas@thomas.org", password: "123456")
 file = File.open(Rails.root.join('db/seeds/users/thomas.jpg'))
 thomas.photo.attach(io: file, filename: 'thomas.jpg', content_type: 'image/jpg')
 thomas.save!

 judas = User.new(name: "Judas", username: "jud", email: "judas@judas.org", password: "123456")
 file = File.open(Rails.root.join('db/seeds/users/judas.jpg'))
 judas.photo.attach(io: file, filename: 'judas.jpg', content_type: 'image/jpg')
 judas.save!

 simon = User.new(name: "Simon", username: "sim", email: "simon@simon.org", password: "123456")
 file = File.open(Rails.root.join('db/seeds/users/simon.jpg'))
 simon.photo.attach(io: file, filename: 'simon.jpg', content_type: 'image/jpg')
 simon.save!
 puts "Users created"

 puts "Creating collections"
portrait = Collection.create(name: "Portrait" , user: pierre)
landscapes = Collection.create(name: "Landscapes")
french_artists = Collection.create(name: "French Artists")
street_art = Collection.create(name: "Street Art")
still_life = Collection.create(name: "Still Life")
scultures = Collection.create(name: "Scultures")
monuments = Collection.create(name: "Monuments")
others = Collection.create(name: "Others")
puts "Collection Created"

puts "Creating Artworks"
interchange = Artwork.create(title: "Interchange", completion_year: 1955, description: "", location:"", collection: others, artist: kooning)
file = File.open(Rails.root.join('db/seeds/artworks/« Interchange »(1955), Willem de Kooning.jpg'))
interchange.photo.attach(io: file, filename: '« Interchange »(1955), Willem de Kooning.jpg', content_type: 'image/jpeg')


puts "Artworks created"
# puts "creating instruments"

# contrebasse = Instrument.new(owner: miebi, name: "Contrebasse Strunal 1930", family: "Cordes", price_per_day: 15, description: "Très bon état, achetée en 2014.")
# file = File.open(Rails.root.join('db/seeds/instruments/Contrebasse.jpg'))
# contrebasse.photo.attach(io: file, filename: 'Contrebasse.jpg', content_type: 'image/jpeg')
# contrebasse.save!
