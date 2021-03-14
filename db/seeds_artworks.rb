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
 kooning = Artist.create(name: "Willem de Kooning", bio: "")
 cezanne = Artist.create(name: "Paul Cézanne", bio: "")
 pollock = Artist.create(name: "Jackson Pollock", bio: "")
 modigliani = Artist.create(name: "Amedeo Modigliani", bio: "")
 klimt = Artist.create(name: "Gustav Klimt", bio: "")
 arcimboldo = Artist.create(name: "Giuseppe Arcimboldo", bio: "")
 michel = Artist.create(name: "Gérard MICHEL", bio: "")
 rembrandt = Artist.create(name: "Rembrandt", bio: "")
 beraud = Artist.create(name: "Jean Béraud", bio: "")
 whatson = Artist.create(name: "Martin Whatson", bio: "")
 boltanski = Artist.create(name: "Boltanski", bio: "")
 brunelleschi = Artist.create(name: "Brunelleschi", bio: "")
 gericault = Artist.create(name: "Théodore Géricault", bio: "")
 velasquez = Artist.create(name: "Diego Vélasquez", bio: "")
 michel_ange = Artist.create(name: "Michel Ange", bio: "")
 maillol = Artist.create(name: "Aristide Maillol", bio: "")
 david = Artist.create(name: "Jacques-Louis David", bio: "")
 luce = Artist.create(name: "Maximilien Luce", bio: "")
 monnet = Artist.create(name: "Claude Monnet", bio: "")
 seurat = Artist.create(name: "Georges Seurat", bio: "")
 rubens = Artist.create(name: "Paul Rubens", bio: "")
 raphael = Artist.create(name: "Raphaël", bio: "")
 signac = Artist.create(name: "Paul Signac", bio: "")
 goya = Artist.create(name: "Francisco de Goya", bio: "")
 brueghel = Artist.create(name: "Pieter Brueghel l_brueghel", bio: "")
 chiang_mai = Artist.create(name: "Chiang Mai", bio: "")
 vincent = Artist.create(name: "Vincent van Gogh", bio: "")
 kandinsky = Artist.create(name: "Kandinsky", bio: "") 
 rodin = Artist.create(name: "Auguste Rodin", bio: "")
 teniers = Artist.create(name: "David Teniers", bio: "")
 adam = Artist.create(name: "Adam", bio: "")
 messine = Artist.create(name: "Antonello de Messine", bio: "")
 gustave = Artist.create(name: "Gustave Caillebotte", bio: "")
 monet = Artist.create(name: "Claude Monet", bio: "")
 gauguin = Artist.create(name: "Paul Gauguin", bio: "")
 dyck = Artist.create(name: "Antoine van Dyck", bio: "")
 hals = Artist.create(name: "Frans Hals", bio: "")
 mantegna = Artist.create(name: "Andrea Mantegna", bio: "")
 folco = Artist.create(name: "Laurent Folco", bio: "")
 vion = Artist.create(name: "Maxime Vion", bio: "")
 weyden = Artist.create(name: "Rogien van der Weyden", bio: "")
 veronese = Artist.create(name: "Paul Veronese", bio: "")
 manet = Artist.create(name: "Edouard Manet", bio: "")
 spitzwerg = Artist.create(name: "Carl Spitzwerg", bio: "")
 bazille = Artist.create(name: "Frédéric Bazille", bio: "")
 francesca = Artist.create(name: "Piero della Francesca", bio: "")

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
portrait = Collection.create!(name: "Portrait" , user: pierre)
landscapes = Collection.create!(name: "Landscapes", user: jean)
french_artists = Collection.create!(name: "French Artists", user: jacques)
street_art = Collection.create!(name: "Street Art", user: mathieu)
still_life = Collection.create!(name: "Still Life", user: thomas)
sculptures = Collection.create!(name: "Sculptures", user: judas)
monuments = Collection.create!(name: "Monuments", user: simon)
others = Collection.create!(name: "Others", user: pierre)
contemporary = Collection.create!(name: "Contemporary", user: jean)
classic = Collection.create!(name: "Classic", user: jacques)
nu = Collection.create!(name: "Nu", user: mathieu)
tapestry = Collection.create!(name: "Tapestry", user: thomas)

puts "Creating Artworks"
fire = Artwork.new(title: "Fire", completion_year: 1561, description: "", location: "", collection: portrait, artist: arcimboldo)
file = File.open(Rails.root.join('db/seeds/artworks/Feu-15661-Giuseppe-arcimboldo.jpg'))
fire.photo.attach(io: file, filename: 'Feu-15661-Giuseppe-arcimboldo.jpg', content_type: 'image/jpeg')
fire.save!

interchange = Artwork.new(title: "Interchange", completion_year: 1955, description: "", location: "", collection: others, artist: kooning)
file = File.open(Rails.root.join('db/seeds/artworks/« Interchange »(1955), Willem de Kooning.jpg'))
interchange.photo.attach(io: file, filename: '« Interchange »(1955), Willem de Kooning.jpg', content_type: 'image/jpeg')
interchange.save!

reve = Artwork.new(title: "Le reve", completion_year: 1932, description: "", location: "", collection: portrait, artist: picasso)
file = File.open(Rails.root.join('db/seeds/artworks/« Le rêve » (1932) de Pablo Picasso.jpg'))
reve.photo.attach(io: file, filename: '« Le rêve » (1932) de Pablo Picasso', content_type: 'image/jpeg')
reve.save!

joueurs = Artwork.new(title: "Les joueurs de cartes", completion_year: 1892, description: "", location: "", collection: others, artist: cezanne)
file = File.open(Rails.root.join('db/seeds/artworks/« Les joueurs de cartes » (1892), Paul Cézanne.jpg'))
joueurs.photo.attach(io: file, filename: '« Les joueurs de cartes » (1892), Paul Cézanne.jpg', content_type: 'image/jpeg')
joueurs.save!

no5 = Artwork.new(title: "Les joueurs de cartes", completion_year: 1948, description: "", location: "", collection: contemporary, artist: pollock)
file = File.open(Rails.root.join('db/seeds/artworks/« No. 5 » (1948), Jackson Pollock.jpg'))
no5.photo.attach(io: file, filename: '« No. 5 » (1948), Jackson Pollock.jpg', content_type: 'image/jpeg')
no5.save!

naked = Artwork.new(title: "Nu couché", completion_year: 1917, description: "", location: "", collection: nu, artist: modigliani)
file = File.open(Rails.root.join('db/seeds/artworks/« Nu couché » (1917), Amedeo Modigliani.jpg'))
naked.photo.attach(io: file, filename: '« Nu couché » (1917), Amedeo Modigliani.jpg', content_type: 'image/jpeg')
naked.save!

adele = Artwork.new(title: "Nu couché", completion_year: 1907, description: "", location: "", collection: portrait, artist: klimt)
file = File.open(Rails.root.join('db/seeds/artworks/« Portrait d’Adèle Bloch Bauer » (1907), Gustav Klimt.jpg'))
adele.photo.attach(io: file, filename: '« Portrait d’Adèle Bloch Bauer » (1907), Gustav Klimt.jpg', content_type: 'image/jpeg')
adele.save!

air = Artwork.new(title: "Air", completion_year: 1566, description: "", location: "", collection: portrait, artist: arcimboldo)
file = File.open(Rails.root.join('db/seeds/artworks/Air-1566-Giuseppe Arcimboldo.jpg'))
air.photo.attach(io: file, filename: 'Air-1566-Giuseppe Arcimboldo.jpg', content_type: 'image/jpeg')
air.save!

arche = Artwork.new(title: "Arche de Noé", completion_year: 1846, description: "", location: "", collection: classic, artist: michel)
file = File.open(Rails.root.join('db/seeds/artworks/Arche de Noé Peinture par Gérard MICHEL.jpg'))
arche.photo.attach(io: file, filename: 'Arche de Noé Peinture par Gérard MICHEL.jpg', content_type: 'image/jpeg')
arche.save!

aristote = Artwork.new(title: "Aristote contemplant le buste d'Homère", completion_year: 1653, description: "", location: "", collection: classic, artist: rembrandt)
file = File.open(Rails.root.join('db/seeds/artworks/Aristote contemplant le buste d_Homère-Rembrandt-1653.jpg'))
aristote.photo.attach(io: file, filename: 'Aristote contemplant le buste d_Homère-Rembrandt-1653.jpg', content_type: 'image/jpeg')
aristote.save!

autoportrait = Artwork.new(title: "Auto portrait", completion_year: 1909, description: "", location: "", collection: portrait, artist: beraud)
file = File.open(Rails.root.join('db/seeds/artworks/Auto portrait-1909-Jean Béraud.jpg'))
autoportrait.photo.attach(io: file, filename: 'Auto portrait-1909-Jean Béraud.jpg', content_type: 'image/jpeg')
autoportrait.save!

automne = Artwork.new(title: "Automne", completion_year: 1572, description: "", location:"", collection: portrait, artist: arcimboldo)
file = File.open(Rails.root.join('db/seeds/artworks/Automne-1572-Giuseppe Arcimboldo.jpg'))
automne.photo.attach(io: file, filename: 'Automne-1572-Giuseppe Arcimboldo.jpg', content_type: 'image/jpeg')
automne.save!

fille = Artwork.new(title: "Petite fille ballon", completion_year: 2002, description: "", location: "", collection: street_art, artist: bansky)
file = File.open(Rails.root.join('db/seeds/artworks/Bansky Petite fille ballon.jpg'))
fille.photo.attach(io: file, filename: 'Bansky Petite fille ballon.jpg', content_type: 'image/jpeg')
fille.save!

behind_the_curtain = Artwork.new(title: "Behind the Curtain", completion_year: 2017, description: "", location: "", collection: street_art, artist: whatson)
file = File.open(Rails.root.join('db/seeds/artworks/Behind the Curtain by Martin Whatson.jpg'))
behind_the_curtain.photo.attach(io: file, filename: 'Behind the Curtain by Martin Whatson.jpg', content_type: 'image/jpeg')
behind_the_curtain.save!

bethlehem = Artwork.new(title: "Bethlehem", completion_year: 2005, description: "", location: "", collection: street_art, artist: bansky)
file = File.open(Rails.root.join('db/seeds/artworks/bethlehem-2005-Banksy.jpg'))
bethlehem.photo.attach(io: file, filename: 'bethlehem-2005-Banksy.jpg', content_type: 'image/jpeg')
bethlehem.save!

theatre_d_ombres = Artwork.new(title: "Theatre d'ombres", completion_year: 1984, description: "", location: "", collection: contemporary, artist: boltanski)
file = File.open(Rails.root.join('db/seeds/artworks/Boltanski_Théâtre-d’ombres-1984-1997.jpg'))
theatre_d_ombres.photo.attach(io: file, filename: 'Boltanski_Théâtre-d’ombres-1984-1997.jpg', content_type: 'image/jpeg')
theatre_d_ombres.save!

boudha = Artwork.new(title: "Bouddha couché du Wat Pho", completion_year: 1832, description: "", location: "", collection: sculptures)
file = File.open(Rails.root.join('db/seeds/artworks/Bouddha couché du Wat Pho (Bgk) - 1832.jpg'))
boudha.photo.attach(io: file, filename: 'Bouddha couché du Wat Pho (Bgk) - 1832.jpg', content_type: 'image/jpeg')
boudha.save!

amis_ennemis = Artwork.new(title: "Amis, Ennemis", completion_year: "", description: "", location: "", collection: classic, artist: caravage)
file = File.open(Rails.root.join('db/seeds/artworks/caravage-a-rome-amis-ennemis-exposition-musee-jacquemart-andre-paris-2.jpg'))
amis_ennemis.photo.attach(io: file, filename: 'caravage-a-rome-amis-ennemis-exposition-musee-jacquemart-andre-paris-2.jpg', content_type: 'image/jpeg')
amis_ennemis.save!

carte_enfer = Artwork.new(title: "Carte de l'Enfer", completion_year: 1485, description: "", location: "", collection: classic, artist: botticelli)
file = File.open(Rails.root.join('db/seeds/artworks/Carte de l_Enfer - Botticelli - 1485.jpg'))
carte_enfer.photo.attach(io: file, filename: 'Carte de l_Enfer - Botticelli - 1485.jpg', content_type: 'image/jpeg')
carte_enfer.save!

cathedrale_santa_maria_del_fiore = Artwork.new(title: "Cathédrale Santa Maria del Fiore", completion_year: 1436, description: "", location: "", collection: monuments, artist: brunelleschi)
file = File.open(Rails.root.join('db/seeds/artworks/Cathédrale Santa Maria del Fiore - Brunelleschi - 1296 à 1436.jpg'))
cathedrale_santa_maria_del_fiore.photo.attach(io: file, filename: 'Cathédrale Santa Maria del Fiore - Brunelleschi - 1296 à 1436.jpg', content_type: 'image/jpeg')
cathedrale_santa_maria_del_fiore.save!

chambord = Artwork.new(title: "Château de Chambord", completion_year: 1519, description: "", location: "", collection: monuments)
file = File.open(Rails.root.join('db/seeds/artworks/Château de Chambord - 1519 à 1608.jpg'))
chambord.photo.attach(io: file, filename: 'Château de Chambord - 1519 à 1608.jpg', content_type: 'image/jpeg')
chambord.save!

chat_mort = Artwork.new(title: "Chat mort", completion_year: 1821, description: "", location: "", collection: classic, artist: gericault)
file = File.open(Rails.root.join('db/seeds/artworks/chat-mort-1821-Théodore Géricault.jpg!Large.jpg'))
chat_mort.photo.attach(io: file, filename: 'chat-mort-1821-Théodore Géricault.jpg!Large.jpg', content_type: 'image/jpeg')
chat_mort.save!

christ_dans_la_maison = Artwork.new(title: "Christ dans la maison de Marthe et Marie", completion_year: 1620, description: "", location: "", collection: classic, artist: velasquez)
file = File.open(Rails.root.join('db/seeds/artworks/Christ dans la maison de Marthe et Marie-1620-Diego Vélasquez.jpg'))
christ_dans_la_maison.photo.attach(io: file, filename: 'Christ dans la maison de Marthe et Marie-1620-Diego Vélasquez.jpg', content_type: 'image/jpeg')
christ_dans_la_maison.save!

codex_atlanticus = Artwork.new(title: "Codex Atlanticus", completion_year: 1510, description: "", location: "", collection: classic, artist: leonardo)
file = File.open(Rails.root.join('db/seeds/artworks/Codex Atlanticus - Léonard de Vinci - 1510.jpg'))
codex_atlanticus.photo.attach(io: file, filename: 'Codex Atlanticus - Léonard de Vinci - 1510.jpg', content_type: 'image/jpeg')
codex_atlanticus.save!

davidd = Artwork.new(title: "David", completion_year: 1504, description: "", location: "", collection: sculptures, artist: michel_ange)
file = File.open(Rails.root.join('db/seeds/artworks/David - Miche-Ange - 1501 à 1504.jpg'))
davidd.photo.attach(io: file, filename: 'David - Miche-Ange - 1501 à 1504.jpg', content_type: 'image/jpeg')
davidd.save!

david2 = Artwork.new(title: "David", completion_year: 1432, description: "", location: "", collection: sculptures, artist: donatello)
file = File.open(Rails.root.join('db/seeds/artworks/david-1432-Donatello.jpg'))
david2.photo.attach(io: file, filename: 'david-1432-Donatello.jpg', content_type: 'image/jpeg')
david2.save!

douleur = Artwork.new(title: "Douleur", completion_year: 1922, description: "", location: "", collection: sculptures, artist: maillol)
file = File.open(Rails.root.join('db/seeds/artworks/douleur-1922-Aristide Maillol.jpg'))
douleur.photo.attach(io: file, filename: 'douleur-1922-Aristide Maillol.jpg', content_type: 'image/jpeg')
douleur.save!

dutch_ships = Artwork.new(title: "Dutch ships ramming spanish galleys off the flemish coast in october 1602-1617", completion_year: 1602, description: "", location: "", collection: classic)
file = File.open(Rails.root.join('db/seeds/artworks/dutch-ships-ramming-spanish-galleys-off-the-flemish-coast-in-october-1602-1617.jpg'))
dutch_ships.photo.attach(io: file, filename: 'dutch-ships-ramming-spanish-galleys-off-the-flemish-coast-in-october-1602-1617.jpg', content_type: 'image/jpeg')
dutch_ships.save!

eau = Artwork.new(title: "Eau", completion_year: 1566, description: "", location: "", collection: portrait, artist: arcimboldo)
file = File.open(Rails.root.join('db/seeds/artworks/Eau-1566-Giuseppe Arcimboldo.jpg'))
eau.photo.attach(io: file, filename: 'Eau-1566-Giuseppe Arcimboldo.jpg', content_type: 'image/jpeg')
eau.save!

eclat = Artwork.new(title: "Eclat", completion_year: 2020, description: "", location: "", collection: portrait)
file = File.open(Rails.root.join('db/seeds/artworks/Eclat.jpg'))
eclat.photo.attach(io: file, filename: 'Eclat.jpg', content_type: 'image/jpeg')
eclat.save!

erasistrate = Artwork.new(title: "Érasistrate découvrant la cause de la maladie d'Antiochius", completion_year: 1774, description: "", location: "", collection: classic, artist: david)
file = File.open(Rails.root.join('db/seeds/artworks/Érasistrate découvrant la cause de la maladie d_Antiochius-Jacques-Louis David-1774.jpg'))
erasistrate.photo.attach(io: file, filename: 'Érasistrate découvrant la cause de la maladie d_Antiochius-Jacques-Louis David-1774.jpg', content_type: 'image/jpeg')
erasistrate.save!

summer = Artwork.new(title: "Summer", completion_year: 1563, description: "", location: "", collection: portrait, artist: arcimboldo)
file = File.open(Rails.root.join('db/seeds/artworks/Eté-1563-Giuseppe Arcimboldo.jpg'))
summer.photo.attach(io: file, filename: 'Eté-1563-Giuseppe Arcimboldo.jpg', content_type: 'image/jpeg')
summer.save!

galerie_de_florence = Artwork.new(title: "Galerie de florence", completion_year: 1561, description: "", location: "", collection: monuments)
file = File.open(Rails.root.join('db/seeds/artworks/Galerie de florence.jpg'))
galerie_de_florence.photo.attach(io: file, filename: 'Galerie de florence.jpg', content_type: 'image/jpeg')
galerie_de_florence.save!

guernica = Artwork.new(title: "Guernica", completion_year: 1936, description: "", location: "", collection: monuments, artist: picasso)
file = File.open(Rails.root.join('db/seeds/artworks/guernica-by-pablo-picasso.jpg'))
guernica.photo.attach(io: file, filename: 'guernica-by-pablo-picasso.jpg', content_type: 'image/jpeg')
guernica.save!

winter = Artwork.new(title: "Winter", completion_year: 1563, description: "", location: "", collection: portrait, artist: arcimboldo)
file = File.open(Rails.root.join('db/seeds/artworks/Hiver-1563-Giuseppe Arcimboldo.jpg'))
winter.photo.attach(io: file, filename: 'Hiver-1563-Giuseppe Arcimboldo.jpg', content_type: 'image/jpeg')
winter.save!

vitruve = Artwork.new(title: "Homme de Vitruve", completion_year: 1510, description: "", location: "", collection: portrait, artist: leonardo)
file = File.open(Rails.root.join('db/seeds/artworks/Homme de Vitruve - Léonard de Vinci - 1510.jpg'))
vitruve.photo.attach(io: file, filename: 'Homme de Vitruve - Léonard de Vinci - 1510.jpg', content_type: 'image/jpeg')
vitruve.save!

honfleur = Artwork.new(title: "Honfleur", completion_year: 1935, description: "", location: "", collection: landscapes, artist: luce)
file = File.open(Rails.root.join('db/seeds/artworks/honfleur-le-phare-et-la-jetée-1935-Maximilien Luce.png'))
honfleur.photo.attach(io: file, filename: 'honfleur-le-phare-et-la-jetée-1935-Maximilien Luce.png', content_type: 'image/png')
honfleur.save!

impression_soleil_levant = Artwork.new(title: "Impression Soleil Levant", completion_year: 1873, description: "", location: "", collection: french_artists, artist: monnet)
file = File.open(Rails.root.join('db/seeds/artworks/impression-soleil-levant-Claude Monnet.jpg'))
impression_soleil_levant.photo.attach(io: file, filename: 'impression-soleil-levant-Claude Monnet.jpg', content_type: 'image/jpeg')
impression_soleil_levant.save!

femme_se_poudrant = Artwork.new(title: "Jeune femme se poudrant", completion_year: 1890, description: "", location: "", collection: french_artists, artist: seurat)
file = File.open(Rails.root.join('db/seeds/artworks/Jeune femme se poudrant-1890-Georges Seurat.jpg'))
femme_se_poudrant.photo.attach(io: file, filename: 'Jeune femme se poudrant-1890-Georges Seurat.jpg', content_type: 'image/jpeg')
femme_se_poudrant.save!

annonciation = Artwork.new(title: "L'Annonciation de la chiesa fiorentina di San Barnaba", completion_year: 1500, description: "", location: "", collection: classic, artist: botticelli)
file = File.open(Rails.root.join('db/seeds/artworks/L_Annonciation de la chiesa fiorentina di San Barnaba-1500-Sandro Botticelli.jpg'))
annonciation.photo.attach(io: file, filename: 'L_Annonciation de la chiesa fiorentina di San Barnaba-1500-Sandro Botticelli.jpg', content_type: 'image/jpeg')
annonciation.save!

la_colere_d_achille = Artwork.new(title: "La Colère d'Achille", completion_year: 1819, description: "", location: "", collection: french_artists, artist: david)
file = File.open(Rails.root.join('db/seeds/artworks/La Colère d_Achille- Jacques-Louis David-1819.jpg'))
la_colere_d_achille.photo.attach(io: file, filename: 'La Colère d_Achille- Jacques-Louis David-1819.jpg', content_type: 'image/jpeg')
la_colere_d_achille.save!

descente = Artwork.new(title: "La Descente de Croix-Pierre", completion_year: 1614, description: "", location: "", collection: french_artists, artist: rubens)
file = File.open(Rails.root.join('db/seeds/artworks/La Descente de Croix-Pierre Paul Rubens-1612-1614.jpg'))
descente.photo.attach(io: file, filename: 'La Descente de Croix-Pierre Paul Rubens-1612-1614.jpg', content_type: 'image/jpeg')
descente.save!

la_grande_madone_cowper = Artwork.new(title: "La Grande Madone Cowper", completion_year: 1508, description: "", location: "", collection: classic, artist: raphael)
file = File.open(Rails.root.join('db/seeds/artworks/La Grande Madone Cowper-1508-Raphaël.jpg'))
la_grande_madone_cowper.photo.attach(io: file, filename: 'La Grande Madone Cowper-1508-Raphaël.jpg', content_type: 'image/jpeg')
la_grande_madone_cowper.save!

grece = Artwork.new(title: "La Grèce sur les ruines de Missolonghi", completion_year: 1826, description: "", location: "", collection: classic, artist: delacroix)
file = File.open(Rails.root.join('db/seeds/artworks/La Grèce sur les ruines de Missolonghi-Eugène Delacroix-1826.jpg'))
grece.photo.attach(io: file, filename: 'La Grèce sur les ruines de Missolonghi-Eugène Delacroix-1826.jpg', content_type: 'image/jpeg')
grece.save!

femme_puit = Artwork.new(title: "La jeune femme au puit", completion_year: 1892, description: "", location: "", collection: french_artists, artist: signac)
file = File.open(Rails.root.join('db/seeds/artworks/La jeune femme au puit-1892.-Paul Signacjpg.jpg'))
femme_puit.photo.attach(io: file, filename: 'La jeune femme au puit-1892.-Paul Signacjpg.jpg', content_type: 'image/jpeg')
femme_puit.save!

fille_perle = Artwork.new(title: "La jeune fille a la perle", completion_year: 1665, description: "", location: "", collection: portrait, artist: vermeer)
file = File.open(Rails.root.join('db/seeds/artworks/La jeune fille a la perle.jpg'))
fille_perle.photo.attach(io: file, filename: 'La jeune fille a la perle.jpg', content_type: 'image/jpeg')
fille_perle.save!

liberte_peuple = Artwork.new(title: "La liberte guidant le peuple", completion_year: 1830, description: "", location: "", collection: french_artists, artist: delacroix)
file = File.open(Rails.root.join('db/seeds/artworks/La liberte guidant le peuple.jpg'))
liberte_peuple.photo.attach(io: file, filename: 'La liberte guidant le peuple.jpg', content_type: 'image/jpeg')
liberte_peuple.save!

la_Madone_colonna = Artwork.new(title: "La Madone Colonna", completion_year: 1508, description: "", location: "", collection: classic, artist: raphael)
file = File.open(Rails.root.join('db/seeds/artworks/La Madone Colonna-Raphaël-1508.jpg'))
la_Madone_colonna.photo.attach(io: file, filename: 'La Madone Colonna-Raphaël-1508.jpg', content_type: 'image/jpeg')
la_Madone_colonna.save!

maison_fou = Artwork.new(title: "la Maison de fous", completion_year: 1814, description: "", location: "", collection: classic, artist: goya)
file = File.open(Rails.root.join('db/seeds/artworks/la Maison de fous-1814-Francisco de Goya.jpg'))
maison_fou.photo.attach(io: file, filename: 'la Maison de fous-1814-Francisco de Goya.jpg', content_type: 'image/jpeg')
maison_fou.save!

wat = Artwork.new(title: "Wat Chedi Luang", completion_year: 1391, description: "", location:"", collection: others, artist: chiang_mai)
file = File.open(Rails.root.join('db/seeds/artworks/Wat Chedi Luang - Chiang Mai - 1391.jpg'))
wat.photo.attach(io: file, filename: 'Wat Chedi Luang - Chiang Mai - 1391.jpg', content_type: 'image/jpeg')
wat.save!

vince = Artwork.new(title: "Autoportrait", completion_year: 1889, description: "", location:"", collection: portrait, artist: vincent)
file = File.open(Rails.root.join('db/seeds/artworks/vincent-van-gogh.jpg'))
vince.photo.attach(io: file, filename: 'vincent-van-gogh.jpg', content_type: 'image/jpeg')
vince.save!

victoire = Artwork.new(title: "Victoire de Samothrace", completion_year: -190, description: "", location:"", collection: sculptures)
file = File.open(Rails.root.join('db/seeds/artworks/Victoire de Samothrace - 190 avJC.jpg'))
victoire.photo.attach(io: file, filename: 'Victoire de Samothrace - 190 avJC.jpg', content_type: 'image/jpeg')
victoire.save!

venus = Artwork.new(title: "Vénus à son miroir", completion_year: 1648, description: "", location:"", collection: nu, artist: velasquez)
file = File.open(Rails.root.join('db/seeds/artworks/Vénus à son miroir-1644-1648-Diego Vélasquez.jpg'))
venus.photo.attach(io: file, filename: 'Vénus à son miroir-1644-1648-Diego Vélasquez.jpg', content_type: 'image/jpeg')
venus.save!


tigre = Artwork.new(title: "Tigre et Serpent", completion_year: 1862, description: "", location:"", collection: others, artist: delacroix)
file = File.open(Rails.root.join('db/seeds/artworks/Tigre et serpent - 1862-Eugène Delacroix.jpg'))
tigre.photo.attach(io: file, filename: 'Tigre et serpent - 1862-Eugène Delacroix.jpg', content_type: 'image/jpeg')
tigre.save!

penseur = Artwork.new(title: "The thinker", completion_year: 1902, description: "", location:"", collection: sculptures, artist: rodin)
file = File.open(Rails.root.join('db/seeds/artworks/the-thinker-1902-Augste Rodin.jpg'))
penseur.photo.attach(io: file, filename: 'the-thinker-1902-Augste Rodin.jpg', content_type: 'image/jpeg')
penseur.save!

nuit = Artwork.new(title: "The Starry Night", completion_year: 1889, description: "", location:"", collection: landscapes, artist: vincent)
file = File.open(Rails.root.join('db/seeds/artworks/the-starry-night-1889-Vincent van Gogh.jpg'))
nuit.photo.attach(io: file, filename: 'the-starry-night-1889-Vincent van Gogh.jpg', content_type: 'image/jpeg')
nuit.save!

radeau = Artwork.new(title: "Le radeau de la meduse", completion_year: 1819, description: "", location:"", collection: others, artist: gericault)
file = File.open(Rails.root.join('db/seeds/artworks/Theodore Gericault Le radeau de la meduse 1819.jpg'))
radeau.photo.attach(io: file, filename: 'Theodore Gericault Le radeau de la meduse 1819.jpg', content_type: 'image/jpeg')
radeau.save!

milkmaid = Artwork.new(title: "The milkmaid", completion_year: 1660, description: "", location:"", collection: portrait, artist: vermeer)
file = File.open(Rails.root.join('db/seeds/artworks/the-milkmaid-1660-Johannes Vermeer.jpg'))
milkmaid.photo.attach(io: file, filename: 'the-milkmaid-1660-Johannes Vermeer.jpg', content_type: 'image/jpeg')
milkmaid.save!

odalisque = Artwork.new(title: "La grande odalisque", completion_year: 1814, description: "", location:"", collection: nu)
file = File.open(Rails.root.join('db/seeds/artworks/the-grande-odalisque-1814.jpg'))
odalisque.photo.attach(io: file, filename: 'the-grande-odalisque-1814.jpg', content_type: 'image/jpeg')
odalisque.save!

pearl = Artwork.new(title: "The girl with a pearl earring", completion_year: 1665, description: "", location:"", collection: portrait, artist: vermeer)
file = File.open(Rails.root.join('db/seeds/artworks/the-girl-with-a-pearl-earring-1665-Johannes Vermeer.jpg'))
pearl.photo.attach(io: file, filename: 'the-girl-with-a-pearl-earring-1665-Johannes Vermeer.jpg', content_type: 'image/jpeg')
pearl.save!

borgo = Artwork.new(title: "The fire in the borgo", completion_year: 1514, description: "", location:"", collection: others)
file = File.open(Rails.root.join('db/seeds/artworks/the-fire-in-the-borgo-1514.jpg'))
borgo.photo.attach(io: file, filename: 'the-fire-in-the-borgo-1514.jpg', content_type: 'image/jpeg')
borgo.save!

terre = Artwork.new(title: "Terre", completion_year: 1570, description: "", location:"", collection: portrait, artist: arcimboldo)
file = File.open(Rails.root.join('db/seeds/artworks/Terre-1570-Giuseppe Arcimboldo.jpg'))
terre.photo.attach(io: file, filename: 'Terre-1570-Giuseppe Arcimboldo.jpg', content_type: 'image/jpeg')
terre.save!

tapestry_artwork = Artwork.new(title: "Tapisserie descente de croix", completion_year: "", description: "", location:"", collection: tapestry)
file = File.open(Rails.root.join('db/seeds/artworks/Tapisserie descente de croix.jpg'))
tapestry_artwork.photo.attach(io: file, filename: 'Tapisserie descente de croix.jpg', content_type: 'image/jpeg')
tapestry_artwork.save!

cene = Artwork.new(title: "Tapisserie de la Cène", completion_year: 1516, description: "", location:"", collection: tapestry)
file = File.open(Rails.root.join('db/seeds/artworks/Tapisserie de la Cène - 1516.jpg'))
cene.photo.attach(io: file, filename: 'Tapisserie de la Cène - 1516.jpg', content_type: 'image/jpeg')
cene.save!

jeune = Artwork.new(title: "le Jeune", completion_year: "", description: "", location:"", collection: others, artist: teniers)
file = File.open(Rails.root.join('db/seeds/artworks/Tableau de David Teniers le Jeune.jpg'))
jeune.photo.attach(io: file, filename: 'Tableau de David Teniers le Jeune.jpg', content_type: 'image/jpeg')
jeune.save!

george = Artwork.new(title: "St George", completion_year: 1416, description: "", location:"", collection: sculptures, artist: donatello)
file = File.open(Rails.root.join('db/seeds/artworks/statue-de-saint-George-1416-Donatello.jpg'))
george.photo.attach(io: file, filename: 'statue-de-saint-George-1416-Donatello.jpg', content_type: 'image/jpeg')
george.save!

ceiling = Artwork.new(title: "ceiling", completion_year: 1510, description: "", location:"", collection: sculptures, artist: adam)
file = File.open(Rails.root.join('db/seeds/artworks/sistine-chapel-ceiling-creation-of-adam-1510.jpg'))
ceiling.photo.attach(io: file, filename: 'sistine-chapel-ceiling-creation-of-adam-1510.jpg', content_type: 'image/jpeg')
ceiling.save!

athens = Artwork.new(title: "The school of athens", completion_year: 1511, description: "", location:"", collection: others, artist: raphael)
file = File.open(Rails.root.join('db/seeds/artworks/school-of-athens-detail-from-right-hand-side-showing-diogenes-on-the-steps-and-euclid-1511-Raphael.jpg'))
athens.photo.attach(io: file, filename: 'school-of-athens-detail-from-right-hand-side-showing-diogenes-on-the-steps-and-euclid-1511-Raphael.jpg', content_type: 'image/jpeg')
athens.save!

sarcophage = Artwork.new(title: "Sarcophage de Toutânkhamon", completion_year: -1327, description: "", location:"", collection: others)
file = File.open(Rails.root.join('db/seeds/artworks/Sarcophage de Toutânkhamon - 1327 avJC.jpg'))
sarcophage.photo.attach(io: file, filename: 'Sarcophage de Toutânkhamon - 1327 avJC.jpg', content_type: 'image/jpeg')
sarcophage.save!

mundi = Artwork.new(title: "Salvador mundi", completion_year: "", description: "", location:"", collection: portrait, artist: leonardo)
file = File.open(Rails.root.join('db/seeds/artworks/Salvador mundi Leonardo da Vinci.jpg'))
mundi.photo.attach(io: file, filename: 'Salvador mundi Leonardo da Vinci.jpg', content_type: 'image/jpeg')
mundi.save!

jerome = Artwork.new(title: "Saint Jérôme dans son étude", completion_year: 1475, description: "", location:"", collection: others, artist: messine)
file = File.open(Rails.root.join('db/seeds/artworks/Saint Jérôme dans son étude-Antonello de Messine-1475.jpg'))
jerome.photo.attach(io: file, filename: 'Saint Jérôme dans son étude-Antonello de Messine-1475.jpg', content_type: 'image/jpeg')
jerome.save!

paris = Artwork.new(title: "Rue de Paris, temps de pluie", completion_year: 1877, description: "", location:"", collection: still_life, artist: gustave)
file = File.open(Rails.root.join('db/seeds/artworks/Rue de Paris, temps de pluie-Gustave Caillebotte-1877.jpg'))
paris.photo.attach(io: file, filename: 'Rue de Paris, temps de pluie-Gustave Caillebotte-1877.jpg', content_type: 'image/jpeg')
paris.save!

rembrandt_artwork = Artwork.new(title: "rembrandt", completion_year: "", description: "", location:"", collection: portrait, artist: rembrandt)
file = File.open(Rails.root.join('db/seeds/artworks/rembrandt.jpg'))
rembrandt_artwork.photo.attach(io: file, filename: 'rembrandt.jpg', content_type: 'image/jpeg')
rembrandt_artwork.save!


etang = Artwork.new(title: "rembrandt", completion_year: 1899, description: "", location:"", collection: landscapes, artist: monet)
file = File.open(Rails.root.join('db/seeds/artworks/Reflets de nuages sur l_étang aux nénuphars-1899-Claude Monet.jpg'))
etang.photo.attach(io: file, filename: 'Reflets de nuages sur l_étang aux nénuphars-1899-Claude Monet.jpg', content_type: 'image/jpeg')
etang.save!

realisme = Artwork.new(title: "Realisme", completion_year: "", description: "", location:"", collection: landscapes)
file = File.open(Rails.root.join('db/seeds/artworks/Realisme.jpg'))
realisme.photo.attach(io: file, filename: 'Realisme.jpg', content_type: 'image/jpeg')
realisme.save!

quand = Artwork.new(title: "Quand te maries-tu", completion_year: 1892, description: "", location:"", collection: portrait, artist: gauguin)
file = File.open(Rails.root.join('db/seeds/artworks/Quand te maries-tu , Paul Gauguin, 1892.jpg'))
quand.photo.attach(io: file, filename: 'Quand te maries-tu , Paul Gauguin, 1892.jpg', content_type: 'image/jpeg')
quand.save!

spring = Artwork.new(title: "Printemps", completion_year: 1573, description: "", location:"", collection: portrait, artist: arcimboldo)
file = File.open(Rails.root.join('db/seeds/artworks/Printemps-1573-Giuseppe Arcimboldo.jpg'))
spring.photo.attach(io: file, filename: 'Printemps-1573-Giuseppe Arcimboldo.jpg', content_type: 'image/jpeg')
spring.save!

eternel = Artwork.new(title: "Printemps éternel", completion_year: 1900, description: "", location:"", collection: sculptures, artist: rodin)
file = File.open(Rails.root.join('db/seeds/artworks/Printemps éternel - 1900 - Auguste Rodin.jpg'))
eternel.photo.attach(io: file, filename: 'Printemps éternel - 1900 - Auguste Rodin.jpg', content_type: 'image/jpeg')
eternel.save!

trône = Artwork.new(title: "portrait of Napoléon on the imperial throne", completion_year: "", description: "", location:"", collection: portrait)
file = File.open(Rails.root.join('db/seeds/artworks/portrait-of-napoléon-on-the-imperial-throne-1806.jpg'))
trône.photo.attach(io: file, filename: 'portrait-of-napoléon-on-the-imperial-throne-1806.jpg', content_type: 'image/jpeg')
trône.save!

cesarini = Artwork.new(title: "portrait de virginio cesarini", completion_year: 1623, description: "", location:"", collection: portrait, artist: dyck)
file = File.open(Rails.root.join('db/seeds/artworks/portrait-de-virginio-cesarini-1623-Antoine van Dyck.jpg'))
cesarini.photo.attach(io: file, filename: 'portrait-de-virginio-cesarini-1623-Antoine van Dyck.jpg', content_type: 'image/jpeg')
cesarini.save!

chapeau = Artwork.new(title: "portrait de l'homme au chapeau", completion_year: 1640, description: "", location:"", collection: portrait, artist: hals)
file = File.open(Rails.root.join('db/seeds/artworks/portrait-de-l_homme-au-chapeau-1640-Frans Hals.jpg'))
chapeau.photo.attach(io: file, filename: 'portrait-de-l_homme-au-chapeau-1640-Frans Hals.jpg', content_type: 'image/jpeg')
chapeau.save!

feneon = Artwork.new(title: "portrait de felix feneon", completion_year: 1890, description: "", location:"", collection: portrait, artist: signac)
file = File.open(Rails.root.join('db/seeds/artworks/portrait-de-felix-feneon-1890-Paul Signac.jpg'))
feneon.photo.attach(io: file, filename: 'portrait-de-felix-feneon-1890-Paul Signac.jpg', content_type: 'image/jpeg')
feneon.save!

gachet = Artwork.new(title: "Portrait of Dr.Gachet", completion_year: 1890, description: "", location:"", collection: portrait, artist: vincent)
file = File.open(Rails.root.join('db/seeds/artworks/Portrait_of_Dr._Gachet (1890) de Vincent Van Gogh.jpg'))
gachet.photo.attach(io: file, filename: 'Portrait_of_Dr._Gachet (1890) de Vincent Van Gogh.jpg', content_type: 'image/jpeg')
gachet.save!

gonzaga = Artwork.new(title: "Portrait de Francesco Gonzaga", completion_year: 1461, description: "", location:"", collection: portrait, artist: mantegna)
file = File.open(Rails.root.join('db/seeds/artworks/Portrait de Francesco Gonzaga-Andrea Mantegna-1461.jpg'))
gonzaga.photo.attach(io: file, filename: 'Portrait de Francesco Gonzaga-Andrea Mantegna-1461.jpg', content_type: 'image/jpeg')
gonzaga.save!

isaac = Artwork.new(title: "Portrait d'Isaac Abrahamsz", completion_year: 1626, description: "", location:"", collection: portrait, artist: hals)
file = File.open(Rails.root.join('db/seeds/artworks/Portrait d_Isaac Abrahamsz. Massa-1626-Frans Hals.jpg'))
isaac.photo.attach(io: file, filename: 'Portrait d_Isaac Abrahamsz. Massa-1626-Frans Hals.jpg', content_type: 'image/jpeg')
isaac.save!

cubisme = Artwork.new(title: "Portrait cubiste", completion_year: "", description: "", location:"", collection: portrait, artist: folco)
file = File.open(Rails.root.join('db/seeds/artworks/Portrait cubiste Laurent Folco.jpg'))
cubisme.photo.attach(io: file, filename: 'Portrait cubiste Laurent Folco.jpg', content_type: 'image/jpeg')
cubisme.save!

pont = Artwork.new(title: "pont neuf", completion_year: 1872, description: "", location:"", collection: landscapes, artist: renoir)
file = File.open(Rails.root.join('db/seeds/artworks/pont-neuf-1872-Auguste Renoir.jpg'))
pont.photo.attach(io: file, filename: 'pont-neuf-1872-Auguste Renoir.jpg', content_type: 'image/jpeg')
pont.save!

moulin = Artwork.new(title: "Le Moulin de la Galette", completion_year: 1976, description: "", location:"", collection: landscapes, artist: renoir)
file = File.open(Rails.root.join('db/seeds/artworks/Pierre-Auguste_Renoir_Le_Moulin_de_la_Galette-1976.jpg'))
moulin.photo.attach(io: file, filename: 'Pierre-Auguste_Renoir_Le_Moulin_de_la_Galette-1976.jpg', content_type: 'image/jpeg')
moulin.save!

pieds = Artwork.new(title: "Pieds du Bouddha couché du Wat Pho", completion_year: 1832, description: "", location:"", collection: sculptures)
file = File.open(Rails.root.join('db/seeds/artworks/Pieds du Bouddha couché du Wat Pho (Bgk) - 1832.jpg'))
pieds.photo.attach(io: file, filename: 'Pieds du Bouddha couché du Wat Pho (Bgk) - 1832.jpg', content_type: 'image/jpeg')
pieds.save!

officier = Artwork.new(title: "Officier de chasseurs à cheval de la garde impériale chargeant", completion_year: 1812, description: "", location:"", collection: portrait, artist: gericault)
file = File.open(Rails.root.join("db/seeds/artworks/Officier de chasseurs a cheval de la garde imperiale chargeant-1812-Theodore Gericault.jpg"))
officier.photo.attach(io: file, filename: "Officier de chasseurs a cheval de la garde imperiale chargeant-1812-Theodore Gericault.jpg", content_type: 'image/jpeg')
officier.save!
v = Artwork.new(title: "", completion_year: "", description: "", location:"", collection: others, artist: vion)
file = File.open(Rails.root.join('db/seeds/artworks/Maxime Vion.jpg'))
v.photo.attach(io: file, filename: 'Maxime Vion.jpg', content_type: 'image/jpeg')
v.save!
mask = Artwork.new(title: "Masque mortuaire Dante", completion_year: 1321, description: "", location:"", collection: sculptures)
file = File.open(Rails.root.join('db/seeds/artworks/Masque mortuaire Dante - 1321.jpg'))
mask.photo.attach(io: file, filename: 'Masque mortuaire Dante - 1321.jpg', content_type: 'image/jpeg')
mask.save!
tomek = Artwork.new(title: "Magic Realism Tomek", completion_year: "", description: "", location:"", collection: portrait)
file = File.open(Rails.root.join('db/seeds/artworks/Magic-Realism-Tomek-Setowski-Poland-06.jpg'))
tomek.photo.attach(io: file, filename: 'Magic-Realism-Tomek-Setowski-Poland-06.jpg', content_type: 'image/jpeg')
tomek.save!
madone = Artwork.new(title: "Madone des Médicis-Rogier", completion_year: 1460, description: "", location:"", collection: portrait, artist: weyden)
file = File.open(Rails.root.join('db/seeds/artworks/Madone des Médicis-Rogier van der Weyden-1460.jpg'))
madone.photo.attach(io: file, filename: 'Madone des Médicis-Rogier van der Weyden-1460.jpg', content_type: 'image/jpeg')
madone.save!
lucretia = Artwork.new(title: "Lucretia", completion_year: 1580, description: "", location:"", collection: portrait, artist: veronese)
file = File.open(Rails.root.join('db/seeds/artworks/Lucretia--1580-Paul Véronèse.jpg'))
lucretia.photo.attach(io: file, filename: 'Lucretia--1580-Paul Véronèse.jpg', content_type: 'image/jpeg')
lucretia.save!

crucifixion = Artwork.new(title: "Crucifixion", completion_year: "", description: "", location:"", collection: others)
file = File.open(Rails.root.join('db/seeds/artworks/louvre-crucifixion_2.jpg'))
crucifixion.photo.attach(io: file, filename: 'louvre-crucifixion_2.jpg', content_type: 'image/jpeg')
crucifixion.save!

trois = Artwork.new(title: "Les Trois Grâces", completion_year: 1639, description: "", location:"", collection: nu, artist: rubens)
file = File.open(Rails.root.join('db/seeds/artworks/Les Trois Grâces-1639-Pierre Paul Rubens.jpg'))
trois.photo.attach(io: file, filename: 'Les Trois Grâces-1639-Pierre Paul Rubens.jpg', content_type: 'image/jpeg')
trois.save!

cygne = Artwork.new(title: "Léda et le Cygne", completion_year: 1506, description: "", location:"", collection: nu, artist: leonardo)
file = File.open(Rails.root.join('db/seeds/artworks/Léda et le Cygne-Léonard de Vinci-1506.jpg'))
cygne.photo.attach(io: file, filename: 'Léda et le Cygne-Léonard de Vinci-1506.jpg', content_type: 'image/jpeg')
cygne.save!

conquet = Artwork.new(title: "le conquet", completion_year: 1929, description: "", location:"", collection: landscapes, artist: signac)
file = File.open(Rails.root.join('db/seeds/artworks/le-conquet-1929-Paul Signac.jpg'))
conquet.photo.attach(io: file, filename: 'le-conquet-1929-Paul Signac.jpg', content_type: 'image/jpeg')
conquet.save!

vieux = Artwork.new(title: "Le Vieux Musicien", completion_year: 1862, description: "", location:"", collection: others, artist: manet)
file = File.open(Rails.root.join('db/seeds/artworks/Le Vieux Musicien-1862-Edouard Manet.jpg'))
vieux.photo.attach(io: file, filename: 'Le Vieux Musicien-1862-Edouard Manet.jpg', content_type: 'image/jpeg')
vieux.save!

rat = Artwork.new(title: "Le Rat de bibliothèque", completion_year: 1850, description: "", location:"", collection: sculptures, artist: spitzwerg)
file = File.open(Rails.root.join('db/seeds/artworks/Le Rat de bibliothèque-1850-Carl Spitzwerg.jpg'))
rat.photo.attach(io: file, filename: 'Le Rat de bibliothèque-1850-Carl Spitzwerg.jpg', content_type: 'image/jpeg')
rat.save!

pie = Artwork.new(title: "la Pie sur le Gibet", completion_year: 1568, description: "", location:"", collection: still_life, artist: brueghel)
file = File.open(Rails.root.join('db/seeds/artworks/la Pie sur le Gibet - Pieter Brueghel l_Ancien - 1568.jpg'))
pie.photo.attach(io: file, filename: 'la Pie sur le Gibet - Pieter Brueghel l_Ancien - 1568.jpg', content_type: 'image/jpeg')
pie.save!

monet1 = Artwork.new(title: "La Pie", completion_year: 1869, description: "", location:"", collection: landscapes, artist: monet)
file = File.open(Rails.root.join('db/seeds/artworks/La Pie-Claude Monet-1869.jpg'))
monet1.photo.attach(io: file, filename: 'La Pie-Claude Monet-1869.jpg', content_type: 'image/jpeg')
monet1.save!

jb = Artwork.new(title: "La Prédication de Saint Jean-Baptiste", completion_year: 1566, description: "", location:"", collection: others, artist: brueghel)
file = File.open(Rails.root.join('db/seeds/artworks/La Prédication de Saint Jean-Baptiste-Pieter Brueghel l_Ancien-1566.jpg'))
jb.photo.attach(io: file, filename: 'La Prédication de Saint Jean-Baptiste-Pieter Brueghel l_Ancien-1566.jpg', content_type: 'image/jpeg')
jb.save!

reddition = Artwork.new(title: "La reddition de Breda", completion_year: 1635, description: "", location:"", collection: others, artist: velasquez)
file = File.open(Rails.root.join('db/seeds/artworks/La reddition de Breda-1635-Diego Velasquez.jpg'))
reddition.photo.attach(io: file, filename: 'La reddition de Breda-1635-Diego Velasquez.jpg', content_type: 'image/jpeg')
reddition.save!

robe = Artwork.new(title: "la robe rose", completion_year: 1814, description: "", location:"", collection: portrait, artist: bazille)
file = File.open(Rails.root.join('db/seeds/artworks/la robe rose-Frédéric Bazille-1864.jpg'))
robe.photo.attach(io: file, filename: 'la robe rose-Frédéric Bazille-1864.jpg', content_type: 'image/jpeg')
robe.save!

storm = Artwork.new(title: "La Tempête sur la mer de Galilée", completion_year: 1633, description: "", location:"", collection: sculptures, artist: rembrandt)
file = File.open(Rails.root.join('db/seeds/artworks/La Tempête sur la mer de Galilée-1633-Rembrandt.jpg'))
storm.photo.attach(io: file, filename: 'La Tempête sur la mer de Galilée-1633-Rembrandt.jpg', content_type: 'image/jpeg')
storm.save!

torture = Artwork.new(title: "la Torture du Juif", completion_year: 1466, description: "", location:"", collection: sculptures, artist: francesca)
file = File.open(Rails.root.join('db/seeds/artworks/la Torture du Juif-Piero della Francesca-1466.jpg'))
torture.photo.attach(io: file, filename: 'la Torture du Juif-Piero della Francesca-1466.jpg', content_type: 'image/jpeg')
torture.save!
last_one = Artwork.new(title: "La Cène", completion_year: 1495, description: "", location:"", collection: others, artist: leonardo)
file = File.open(Rails.root.join('db/seeds/artworks/la-Cène-1495-Léonard de Vinci.jpg'))
last_one.photo.attach(io: file, filename: 'la-Cène-1495-Léonard de Vinci.jpg', content_type: 'image/jpeg')
last_one.save!
mona_lisa = Artwork.new(title: "Le Rat de bibliothèque", completion_year: 1510, description: "", location:"", collection: portrait, artist: leonardo)
file = File.open(Rails.root.join('db/seeds/artworks/La-Joconde-1510-Leonard de Vinci.jpg'))
mona_lisa.photo.attach(io: file, filename: 'La-Joconde-1510-Leonard de Vinci.jpg', content_type: 'image/jpeg')
mona_lisa.save!
bookman = Artwork.new(title: "Le Bibliothécaire", completion_year: 1566, description: "", location:"", collection: portrait, artist: arcimboldo)
file = File.open(Rails.root.join('db/seeds/artworks/Le Bibliothécaire-1566-Giuseppe Arcimboldo.jpg'))
bookman.photo.attach(io: file, filename: 'Le Bibliothécaire-1566-Giuseppe Arcimboldo.jpg', content_type: 'image/jpeg')
bookman.save!
bouffon = Artwork.new(title: "le bouffon don Juan d'Autriche", completion_year: 1633, description: "", location:"", collection: portrait, artist: velasquez)
file = File.open(Rails.root.join('db/seeds/artworks/le bouffon don Juan d_Autriche - 1633 - Diego Vélasquez.jpg'))
bouffon.photo.attach(io: file, filename: 'le bouffon don Juan d_Autriche - 1633 - Diego Vélasquez.jpg', content_type: 'image/jpeg')
bouffon.save!
cirque = Artwork.new(title: "Le Cirque", completion_year: 1891, description: "", location:"", collection: others, artist: seurat)
file = File.open(Rails.root.join('db/seeds/artworks/Le Cirque-Georges Seurat-1891.jpg'))
cirque.photo.attach(io: file, filename: 'Le Cirque-Georges Seurat-1891.jpg', content_type: 'image/jpeg')
cirque.save!
bronze = Artwork.new(title: "Le Penseur", completion_year: 1903, description: "", location:"", collection: sculptures, artist: rodin)
file = File.open(Rails.root.join('db/seeds/artworks/Le Penseur - Auguste Rodin - 1903.jpg'))
bronze.photo.attach(io: file, filename: 'Le Penseur - Auguste Rodin - 1903.jpg', content_type: 'image/jpeg')
bronze.save!
