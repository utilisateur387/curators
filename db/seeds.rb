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
 donatello = Artist.create(name: "Donatello", bio: "")
 maillol = Artist.create(name: "Aristide Maillol", bio: "")
 david = Artist.create(name: "Jacques-Louis David", bio: "")
 luce = Artist.create(name: "Maximilien Luce", bio: "")
 monnet = Artist.create(name: "Claude Monnet", bio: "")
 seurat = Artist.create(name: "Georges Seurat", bio: "")
 rubens = Artist.create(name: "Paul Rubens", bio: "")
 raphael = Artist.create(name: "Raphaël", bio: "")
 signac = Artist.create(name: "Paul Signac", bio: "")
 vermeer = Artist.create(name: "Johannes Vermeer", bio: "")
 goya = Artist.create(name: "Francisco de Goya", bio: "")
 ancien = Artist.create(name: "Pieter Brueghel l_Ancien", bio: "")

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
sculptures = Collection.create(name: "Sculptures")
monuments = Collection.create(name: "Monuments")
others = Collection.create(name: "Others")
contemporary = Collection.create(name: "Contemporary")
classic = Collection.create(name: "Classic")
nus = Collection.create(name: "Nus")
tapestry = Collection.create(name: "Tapestry")

puts "Collection Created"

puts "Creating Artworks"
interchange = Artwork.create(title: "Interchange", completion_year: 1955, description: "", location: "", collection: others, artist: kooning)
file = File.open(Rails.root.join('db/seeds/artworks/« Interchange »(1955), Willem de Kooning.jpg'))
interchange.photo.attach(io: file, filename: '« Interchange »(1955), Willem de Kooning.jpg', content_type: 'image/jpeg')

reve = Artwork.create(title: "Le reve", completion_year: 1932, description: "", location: "", collection: portrait, artist: picasso)
file = File.open(Rails.root.join('db/seeds/artworks/« Le rêve » (1932) de Pablo Picasso.jpg'))
reve.photo.attach(io: file, filename: '« Le rêve » (1932) de Pablo Picasso', content_type: 'image/jpeg')

joueurs = Artwork.create(title: "Les joueurs de cartes", completion_year: 1892, description: "", location: "", collection: others, artist: cezanne)
file = File.open(Rails.root.join('db/seeds/artworks/« Les joueurs de cartes » (1892), Paul Cézanne.jpg'))
joueurs.photo.attach(io: file, filename: '« Les joueurs de cartes » (1892), Paul Cézanne.jpg', content_type: 'image/jpeg')

no5 = Artwork.create(title: "Les joueurs de cartes", completion_year: 1948, description: "", location: "", collection: contemporary, artist: pollock)
file = File.open(Rails.root.join('db/seeds/artworks/« No. 5 » (1948), Jackson Pollock.jpg'))
no5.photo.attach(io: file, filename: '« No. 5 » (1948), Jackson Pollock.jpg', content_type: 'image/jpeg')

nu = Artwork.create(title: "Nu couché", completion_year: 1917, description: "", location: "", collection: nus, artist: modigliani)
file = File.open(Rails.root.join('db/seeds/artworks/« Nu couché » (1917), Amedeo Modigliani.jpg'))
nu.photo.attach(io: file, filename: '« Nu couché » (1917), Amedeo Modigliani.jpg', content_type: 'image/jpeg')

adele = Artwork.create(title: "Nu couché", completion_year: 1907, description: "", location: "", collection: portrait, artist: klimt)
file = File.open(Rails.root.join('db/seeds/artworks/« Portrait d’Adèle Bloch Bauer » (1907), Gustav Klimt.jpg'))
adele.photo.attach(io: file, filename: '« Portrait d’Adèle Bloch Bauer » (1907), Gustav Klimt.jpg', content_type: 'image/jpeg')

air = Artwork.create(title: "Air", completion_year: 1566, description: "", location: "", collection: portrait, artist: arcimboldo)
file = File.open(Rails.root.join('db/seeds/artworks/Air-1566-Giuseppe Arcimboldo.jpg'))
air.photo.attach(io: file, filename: 'Air-1566-Giuseppe Arcimboldo.jpg', content_type: 'image/jpeg')

arche = Artwork.create(title: "Arche de Noé", completion_year: 1846, description: "", location: "", collection: classic, artist: michel)
file = File.open(Rails.root.join('db/seeds/artworks/Arche de Noé Peinture par Gérard MICHEL.jpg'))
arche.photo.attach(io: file, filename: 'Arche de Noé Peinture par Gérard MICHEL.jpg', content_type: 'image/jpeg')

aristote = Artwork.create(title: "Aristote contemplant le buste d'Homère", completion_year: 1653, description: "", location: "", collection: classic, artist: rembrandt)
file = File.open(Rails.root.join('db/seeds/artworks/Aristote contemplant le buste d_Homère-Rembrandt-1653.jpg'))
aristote.photo.attach(io: file, filename: 'Aristote contemplant le buste d_Homère-Rembrandt-1653.jpg', content_type: 'image/jpeg')

autoportrait = Artwork.create(title: "Auto portrait", completion_year: 1909, description: "", location: "", collection: portrait, artist: beraud)
file = File.open(Rails.root.join('db/seeds/artworks/Auto portrait-1909-Jean Béraud.jpg'))
autoportrait.photo.attach(io: file, filename: 'Auto portrait-1909-Jean Béraud.jpg', content_type: 'image/jpeg')

automne = Artwork.create(title: "Automne", completion_year: 1572, description: "", location:"", collection: portrait, artist: arcimboldo)
file = File.open(Rails.root.join('db/seeds/artworks/Automne-1572-Giuseppe Arcimboldo.jpg'))
automne.photo.attach(io: file, filename: 'Automne-1572-Giuseppe Arcimboldo.jpg', content_type: 'image/jpeg')

fille = Artwork.create(title: "Petite fille ballon", completion_year: 2002, description: "", location: "", collection: street_art, artist: bansky)
file = File.open(Rails.root.join('db/seeds/artworks/Bansky Petite fille ballon.jpg'))
fille.photo.attach(io: file, filename: 'Bansky Petite fille ballon.jpg', content_type: 'image/jpeg')

behind_the_curtain = Artwork.create(title: "Behind the Curtain", completion_year: 2017, description: "", location: "", collection: street_art, artist: whatson)
file = File.open(Rails.root.join('db/seeds/artworks/Behind the Curtain by Martin Whatson.jpg'))
behind_the_curtain.photo.attach(io: file, filename: 'Behind the Curtain by Martin Whatson.jpg', content_type: 'image/jpeg')

bethlehem = Artwork.create(title: "Bethlehem", completion_year: 2005, description: "", location: "", collection: street_art, artist: bansky)
file = File.open(Rails.root.join('db/seeds/artworks/bethlehem-2005-Banksy.jpg'))
bethlehem.photo.attach(io: file, filename: 'bethlehem-2005-Banksy.jpg', content_type: 'image/jpeg')

theatre_d_ombres = Artwork.create(title: "Theatre d'ombres", completion_year: 1984, description: "", location: "", collection: contemporary, artist: boltanski)
file = File.open(Rails.root.join('db/seeds/artworks/Boltanski_Théâtre-d’ombres-1984-1997.jpg'))
theatre_d_ombres.photo.attach(io: file, filename: 'Boltanski_Théâtre-d’ombres-1984-1997.jpg', content_type: 'image/jpeg')

boudha = Artwork.create(title: "Bouddha couché du Wat Pho", completion_year: 1832, description: "", location: "", collection: sculptures)
file = File.open(Rails.root.join('db/seeds/artworks/Bouddha couché du Wat Pho (Bgk) - 1832.jpg'))
boudha.photo.attach(io: file, filename: 'Bouddha couché du Wat Pho (Bgk) - 1832.jpg', content_type: 'image/jpeg')

amis_ennemis = Artwork.create(title: "Amis, Ennemis", completion_year: "", description: "", location: "", collection: classic, artist: caravage)
file = File.open(Rails.root.join('db/seeds/artworks/caravage-a-rome-amis-ennemis-exposition-musee-jacquemart-andre-paris-2.jpg'))
amis_ennemis.photo.attach(io: file, filename: 'caravage-a-rome-amis-ennemis-exposition-musee-jacquemart-andre-paris-2.jpg', content_type: 'image/jpeg')

carte_enfer = Artwork.create(title: "Carte de l'Enfer", completion_year: 1485, description: "", location: "", collection: classic, artist: botticelli)
file = File.open(Rails.root.join('db/seeds/artworks/Carte de l_Enfer - Botticelli - 1485.jpg'))
carte_enfer.photo.attach(io: file, filename: 'Carte de l_Enfer - Botticelli - 1485.jpg', content_type: 'image/jpeg')

cathedrale_santa_maria_del_fiore = Artwork.create(title: "Cathédrale Santa Maria del Fiore", completion_year: 1436, description: "", location: "", collection: monuments, artist: brunelleschi)
file = File.open(Rails.root.join('db/seeds/artworks/Cathédrale Santa Maria del Fiore - Brunelleschi - 1296 à 1436.jpg'))
cathedrale_santa_maria_del_fiore.photo.attach(io: file, filename: 'Cathédrale Santa Maria del Fiore - Brunelleschi - 1296 à 1436.jpg', content_type: 'image/jpeg')

chambord = Artwork.create(title: "Château de Chambord", completion_year: 1519, description: "", location: "", collection: monuments)
file = File.open(Rails.root.join('db/seeds/artworks/Château de Chambord - 1519 à 1608.jpg'))
chambord.photo.attach(io: file, filename: 'Château de Chambord - 1519 à 1608.jpg', content_type: 'image/jpeg')

chat_mort = Artwork.create(title: "Chat mort", completion_year: 1821, description: "", location: "", collection: classic, artist: gericault)
file = File.open(Rails.root.join('db/seeds/artworks/chat-mort-1821-Théodore Géricault.jpg!Large.jpg'))
chat_mort.photo.attach(io: file, filename: 'chat-mort-1821-Théodore Géricault.jpg!Large.jpg', content_type: 'image/jpeg')

christ_dans_la_maison = Artwork.create(title: "Christ dans la maison de Marthe et Marie", completion_year: 1620, description: "", location: "", collection: classic, artist: velasquez)
file = File.open(Rails.root.join('db/seeds/artworks/Christ dans la maison de Marthe et Marie-1620-Diego Vélasquez.jpg'))
christ_dans_la_maison.photo.attach(io: file, filename: 'Christ dans la maison de Marthe et Marie-1620-Diego Vélasquez.jpg', content_type: 'image/jpeg')

codex_atlanticus = Artwork.create(title: "Codex Atlanticus", completion_year: 1510, description: "", location: "", collection: classic, artist: leonardo)
file = File.open(Rails.root.join('db/seeds/artworks/Codex Atlanticus - Léonard de Vinci - 1510.jpg'))
codex_atlanticus.photo.attach(io: file, filename: 'Codex Atlanticus - Léonard de Vinci - 1510.jpg', content_type: 'image/jpeg')

davidd = Artwork.create(title: "David", completion_year: 1504, description: "", location: "", collection: sculptures, artist: michel_ange)
file = File.open(Rails.root.join('db/seeds/artworks/David - Miche-Ange - 1501 à 1504.jpg'))
davidd.photo.attach(io: file, filename: 'David - Miche-Ange - 1501 à 1504.jpg', content_type: 'image/jpeg')

david2 = Artwork.create(title: "David", completion_year: 1432, description: "", location: "", collection: sculptures, artist: donatello)
file = File.open(Rails.root.join('db/seeds/artworks/david-1432-Donatello.jpg'))
david2.photo.attach(io: file, filename: 'david-1432-Donatello.jpg', content_type: 'image/jpeg')

douleur = Artwork.create(title: "Douleur", completion_year: 1922, description: "", location: "", collection: sculptures, artist: maillol)
file = File.open(Rails.root.join('db/seeds/artworks/douleur-1922-Aristide Maillol.jpg'))
douleur.photo.attach(io: file, filename: 'douleur-1922-Aristide Maillol.jpg', content_type: 'image/jpeg')

dutch_ships = Artwork.create(title: "Dutch ships ramming spanish galleys off the flemish coast in october 1602-1617", completion_year: 1602, description: "", location: "", collection: classic)
file = File.open(Rails.root.join('db/seeds/artworks/dutch-ships-ramming-spanish-galleys-off-the-flemish-coast-in-october-1602-1617.jpg'))
dutch_ships.photo.attach(io: file, filename: 'dutch-ships-ramming-spanish-galleys-off-the-flemish-coast-in-october-1602-1617.jpg', content_type: 'image/jpeg')

eau = Artwork.create(title: "Eau", completion_year: 1566, description: "", location: "", collection: portrait, artist: arcimboldo)
file = File.open(Rails.root.join('db/seeds/artworks/Eau-1566-Giuseppe Arcimboldo.jpg'))
eau.photo.attach(io: file, filename: 'Eau-1566-Giuseppe Arcimboldo.jpg', content_type: 'image/jpeg')

eclat = Artwork.create(title: "Eclat", completion_year: 2020, description: "", location: "", collection: portrait)
file = File.open(Rails.root.join('db/seeds/artworks/Eclat.jpg'))
eclat.photo.attach(io: file, filename: 'Eclat.jpg', content_type: 'image/jpeg')

erasistrate = Artwork.create(title: "Érasistrate découvrant la cause de la maladie d'Antiochius", completion_year: 1774, description: "", location: "", collection: classic, artist: david)
file = File.open(Rails.root.join('db/seeds/artworks/Érasistrate découvrant la cause de la maladie d_Antiochius-Jacques-Louis David-1774.jpg'))
erasistrate.photo.attach(io: file, filename: 'Érasistrate découvrant la cause de la maladie d_Antiochius-Jacques-Louis David-1774.jpg', content_type: 'image/jpeg')

summer = Artwork.create(title: "Summer", completion_year: 1563, description: "", location: "", collection: portrait, artist: arcimboldo)
file = File.open(Rails.root.join('db/seeds/artworks/Eté-1563-Giuseppe Arcimboldo.jpg'))
summer.photo.attach(io: file, filename: 'Eté-1563-Giuseppe Arcimboldo.jpg', content_type: 'image/jpeg')

fire = Artwork.create(title: "Fire", completion_year: 1561, description: "", location: "", collection: portrait, artist: arcimboldo)
file = File.open(Rails.root.join('db/seeds/artworks/Feu-15661-Giuseppe Arcimboldo.jpg'))
fire.photo.attach(io: file, filename: 'Feu-15661-Giuseppe Arcimboldo.jpg', content_type: 'image/jpeg')

galerie_de_florence = Artwork.create(title: "Galerie de florence", completion_year: 1561, description: "", location: "", collection: monuments)
file = File.open(Rails.root.join('db/seeds/artworks/Galerie de florence.jpg'))
galerie_de_florence.photo.attach(io: file, filename: 'Galerie de florence.jpg', content_type: 'image/jpeg')

guernica = Artwork.create(title: "Guernica", completion_year: 1936, description: "", location: "", collection: monuments, artist: picasso)
file = File.open(Rails.root.join('db/seeds/artworks/guernica-by-pablo-picasso.jpg'))
guernica.photo.attach(io: file, filename: 'guernica-by-pablo-picasso.jpg', content_type: 'image/jpeg')

winter = Artwork.create(title: "Winter", completion_year: 1563, description: "", location: "", collection: portrait, artist: arcimboldo)
file = File.open(Rails.root.join('db/seeds/artworks/Hiver-1563-Giuseppe Arcimboldo.jpg'))
winter.photo.attach(io: file, filename: 'Hiver-1563-Giuseppe Arcimboldo.jpg', content_type: 'image/jpeg')

vitruve = Artwork.create(title: "Homme de Vitruve", completion_year: 1510, description: "", location: "", collection: portrait, artist: leonardo)
file = File.open(Rails.root.join('db/seeds/artworks/Homme de Vitruve - Léonard de Vinci - 1510.jpg'))
vitruve.photo.attach(io: file, filename: 'Homme de Vitruve - Léonard de Vinci - 1510.jpg', content_type: 'image/jpeg')

honfleur = Artwork.create(title: "Honfleur", completion_year: 1935, description: "", location: "", collection: landscapes, artist: luce)
file = File.open(Rails.root.join('db/seeds/artworks/honfleur-le-phare-et-la-jetée-1935-Maximilien Luce.png'))
honfleur.photo.attach(io: file, filename: 'honfleur-le-phare-et-la-jetée-1935-Maximilien Luce.png', content_type: 'image/png')

impression_soleil_levant = Artwork.create(title: "Impression Soleil Levant", completion_year: 1873, description: "", location: "", collection: french_artists, artist: monnet)
file = File.open(Rails.root.join('db/seeds/artworks/impression-soleil-levant-Claude Monnet.jpg'))
impression_soleil_levant.photo.attach(io: file, filename: 'impression-soleil-levant-Claude Monnet.jpg', content_type: 'image/jpeg')

femme_se_poudrant = Artwork.create(title: "Jeune femme se poudrant", completion_year: 1890, description: "", location: "", collection: french_artists, artist: seurat)
file = File.open(Rails.root.join('db/seeds/artworks/Jeune femme se poudrant-1890-Georges Seurat.jpg'))
femme_se_poudrant.photo.attach(io: file, filename: 'Jeune femme se poudrant-1890-Georges Seurat.jpg', content_type: 'image/jpeg')

annonciation = Artwork.create(title: "L'Annonciation de la chiesa fiorentina di San Barnaba", completion_year: 1500, description: "", location: "", collection: classic, artist: botticelli)
file = File.open(Rails.root.join('db/seeds/artworks/L_Annonciation de la chiesa fiorentina di San Barnaba-1500-Sandro Botticelli.jpg'))
annonciation.photo.attach(io: file, filename: 'L_Annonciation de la chiesa fiorentina di San Barnaba-1500-Sandro Botticelli.jpg', content_type: 'image/jpeg')

la_colere_d_achille = Artwork.create(title: "La Colère d'Achille", completion_year: 1819, description: "", location: "", collection: french_artists, artist: david)
file = File.open(Rails.root.join('db/seeds/artworks/La Colère d_Achille- Jacques-Louis David-1819.jpg'))
la_colere_d_achille.photo.attach(io: file, filename: 'La Colère d_Achille- Jacques-Louis David-1819.jpg', content_type: 'image/jpeg')

descente = Artwork.create(title: "La Descente de Croix-Pierre", completion_year: 1614, description: "", location: "", collection: french_artists, artist: rubens)
file = File.open(Rails.root.join('db/seeds/artworks/La Descente de Croix-Pierre Paul Rubens-1612-1614.jpg'))
descente.photo.attach(io: file, filename: 'La Descente de Croix-Pierre Paul Rubens-1612-1614.jpg', content_type: 'image/jpeg')

la_grande_madone_cowper = Artwork.create(title: "La Grande Madone Cowper", completion_year: 1508, description: "", location: "", collection: classic, artist: raphael)
file = File.open(Rails.root.join('db/seeds/artworks/La Grande Madone Cowper-1508-Raphaël.jpg'))
la_grande_madone_cowper.photo.attach(io: file, filename: 'La Grande Madone Cowper-1508-Raphaël.jpg', content_type: 'image/jpeg')

grece = Artwork.create(title: "La Grèce sur les ruines de Missolonghi", completion_year: 1826, description: "", location: "", collection: classic, artist: delacroix)
file = File.open(Rails.root.join('db/seeds/artworks/La Grèce sur les ruines de Missolonghi-Eugène Delacroix-1826.jpg'))
grece.photo.attach(io: file, filename: 'La Grèce sur les ruines de Missolonghi-Eugène Delacroix-1826.jpg', content_type: 'image/jpeg')

femme_puit = Artwork.create(title: "La jeune femme au puit", completion_year: 1892, description: "", location: "", collection: french_artists, artist: signac)
file = File.open(Rails.root.join('db/seeds/artworks/La jeune femme au puit-1892.-Paul Signacjpg.jpg'))
femme_puit.photo.attach(io: file, filename: 'La jeune femme au puit-1892.-Paul Signacjpg.jpg', content_type: 'image/jpeg')

fille_perle = Artwork.create(title: "La jeune fille a la perle", completion_year: 1665, description: "", location: "", collection: portrait, artist: vermeer)
file = File.open(Rails.root.join('db/seeds/artworks/La jeune fille a la perle.jpg'))
fille_perle.photo.attach(io: file, filename: 'La jeune fille a la perle.jpg', content_type: 'image/jpeg')

liberte_peuple = Artwork.create(title: "La liberte guidant le peuple", completion_year: 1830, description: "", location: "", collection: french_artists, artist: delacroix)
file = File.open(Rails.root.join('db/seeds/artworks/La liberte guidant le peuple.jpg'))
liberte_peuple.photo.attach(io: file, filename: 'La liberte guidant le peuple.jpg', content_type: 'image/jpeg')

la_Madone_colonna = Artwork.create(title: "La Madone Colonna", completion_year: 1508, description: "", location: "", collection: classic, artist: raphael)
file = File.open(Rails.root.join('db/seeds/artworks/La Madone Colonna-Raphaël-1508.jpg'))
la_Madone_colonna.photo.attach(io: file, filename: 'La Madone Colonna-Raphaël-1508.jpg', content_type: 'image/jpeg')

maison_fou = Artwork.create(title: "la Maison de fous", completion_year: 1814, description: "", location: "", collection: classic, artist: goya)
file = File.open(Rails.root.join('db/seeds/artworks/la Maison de fous-1814-Francisco de Goya.jpg'))
maison_fou.photo.attach(io: file, filename: 'la Maison de fous-1814-Francisco de Goya.jpg', content_type: 'image/jpeg')

pie_gibet = Artwork.create(title: "la Pie sur le Gibet", completion_year: 1568, description: "", location: "", collection: classic, artist: ancien)
file = File.open(Rails.root.join('db/seeds/artworks/la Pie sur le Gibet - Pieter Brueghel l_Ancien - 1568.jpg'))
pie_gibet.photo.attach(io: file, filename: 'la Pie sur le Gibet - Pieter Brueghel l_Ancien - 1568.jpg', content_type: 'image/jpeg')

puts "Artworks created"
# puts "creating instruments"

# contrebasse = Instrument.new(owner: miebi, name: "Contrebasse Strunal 1930", family: "Cordes", price_per_day: 15, description: "Très bon état, achetée en 2014.")
# file = File.open(Rails.root.join('db/seeds/instruments/Contrebasse.jpg'))
# contrebasse.photo.attach(io: file, filename: 'Contrebasse.jpg', content_type: 'image/jpeg')
# contrebasse.save!
