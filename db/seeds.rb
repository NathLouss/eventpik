require 'open-uri'

puts "destruction activity en cours"
Activity.destroy_all

puts "destruction user en cours"
User.destroy_all

puts "creation user"
user = User.create!(nick_name: "alex", email: "alexandre.badin33@laposte.net", password: "azerty")

puts "destruction event en cours"
Event.destroy_all

puts "Finished !"

puts "creating activities"
activity1 = Activity.new(
  title: "Marathon de Bordeaux",
  category: "sport",
  address: "8 rue Notre Dame, 33000 Bordeaux",
  description: "Le marathon de Bordeaux Métropole est un événement populaire qui allie sport et divertissement, et se veut une manière différente de découvrir le vignoble bordelais et le patrimoine architectural de la ville. Il a lieu début avril au départ du site de Bordeaux-Port de la Lune et traverse plusieurs communes de l’agglomération bordelaise. Il serpente ensuite entre les vignobles et les bords de Garonne.",
  website_url: "https://www.marathondebordeauxmetropole.com/",
  duration: 240,
  price: 100,
  rating: 5
  )
  activity1.photo.attach(io: URI.open('https://res.cloudinary.com/dfuxvscct/image/upload/v1622024193/marathon-bordeaux_uasywg.png'), filename: 'nes.png', content_type: 'image/png')
  activity1.save!

  activity2 = Activity.new(
  title: "Musée d'Aquitaine",
  category: "culture",
  address: "20 Cours Pasteur, 33000 Bordeaux",
  description: "Le musée d’Aquitaine à Bordeaux rassemble les objets et les documents liés à l’histoire de Bordeaux et de l’Aquitaine, de la Préhistoire à l’Époque contemporaine. Il regroupe administrativement le Centre national Jean-Moulin de Bordeaux et le musée Goupil dont il conserve la collection.",
  website_url: "http://www.musee-aquitaine-bordeaux.fr/",
  duration: 120,
  price: 5,
  rating: 4
  )
  activity2.photo.attach(io: URI.open('https://res.cloudinary.com/dfuxvscct/image/upload/v1622024199/musee-aquitaine-bordeaux_iqnyvf.png'), filename: 'nes.png', content_type: 'image/png')
  activity2.save!

  activity3 = Activity.new(
  title: "Château Pape Clément",
  category: "gastronomie",
  address: "216 Avenue Dr Nancel Penard, 33600 Pessac",
  description: "Après une échappée dans le parc, entrez dans le cuvier bois dédié à la vinification du vin rouge, assorti de ses piges en inox et faites-vous conter ses secrets de fabrication.
  Pénétrez enfin dans le chai à barriques où repose notre vin pendant 18 mois et découvrez les subtilités d’un élevage réussi.
  Terminez votre visite par la dégustation de 3 vins de terroirs différents dont le Château Pape Clément rouge.",
  website_url: "https://www.chateau-pape-clement.fr/",
  duration: 90,
  price: 20,
  rating: 4
  )
  activity3.photo.attach(io: URI.open('https://res.cloudinary.com/dfuxvscct/image/upload/v1622024180/degustation-vin_gsnaoq.png'), filename: 'nes.png', content_type: 'image/png')
  activity3.save!

  activity4 = Activity.new(
  title: "Visite Gastronomique",
  category: "gastronomie",
  address: "Place de la Bourse, 33000 Bordeaux",
  description: "Après une échappée dans le parc, entrez dans le cuvier bois dédié à la vinification du vin rouge, assorti de ses piges en inox et faites-vous conter ses secrets de fabrication.
  Pénétrez enfin dans le chai à barriques où repose notre vin pendant 18 mois et découvrez les subtilités d’un élevage réussi.
  Terminez votre visite par la dégustation de 3 vins de terroirs différents dont le Château Pape Clément rouge.",
  website_url: "https://www.bordeaux-tourisme.com/gastronomie-art-vivre/",
  duration: 210,
  price: 80,
  rating: 4
  )
  activity4.photo.attach(io: URI.open('https://res.cloudinary.com/dfuxvscct/image/upload/v1622636078/degustation-bordeaux_itrwji.png'), filename: 'nes.png', content_type: 'image/png')
  activity4.save!

activity5 = Activity.new(
  title: "Sentinelles du climat",
  category: "culture",
  address: "5 place Bardineau, 33000 Bordeaux",
  description: "Cette exposition présente, à l'échelle régionale, les effets du changement climatique sur la biodiversité.
  Basée sur ces sentinelles, l'exposition présente le contexte actuel de déclin de la biodiversité lié aux activités humaines, dont un focus plus détaillé de la question des impacts de la crise climatique.",
  website_url: "https://www.bordeaux.fr/agendaGeneral/pgFicheEvt.psml?_nfpb=true&_pageLabel=pgFicheEvt&classofcontent=evenement&id=193662&iEvt=21&retourListe=1&classListe=agendaContribuable&idListe=5955&typeAgendaListe=&nbreEvtPageListe=25/",
  duration: 90,
  price: 7,
  rating: 4
  )
  activity5.photo.attach(io: URI.open('https://res.cloudinary.com/dfuxvscct/image/upload/v1622636074/climat_j9ngp2.png'), filename: 'nes.png', content_type: 'image/png')
  activity5.save!

  activity6 = Activity.new(
  title: "Balade aérienne",
  category: "sport",
  address: "305 Avenue de Mont de Marsan, 33850 Léognan",
  description: "Rejoignez un pilote sur un vol unique et partagez le coût avec lui.Une excellente façon de découvrir les magnifiques paysages de la région à bord d'un avion privé.
  Votre pilote Wingly se fera un plaisir de partager avec vous sa passion pour le vol et vous emmènera pour un voyage inoubliable au-dessus de la région de Bordeaux, vous offrant des vues imprenables sur la dune du Pilat, les vignobles locaux et bien plus encore.",
  website_url: "https://www.viator.com/fr-CA/tours/France/Discovery-Flight-of-Bordeauxs-Surroundings-with-WIngly/d51-110321P26/",
  duration: 60,
  price: 135,
  rating: 5
  )
  activity6.photo.attach(io: URI.open('https://res.cloudinary.com/dfuxvscct/image/upload/v1622636316/balade-aerienne_trbqa2.png'), filename: 'nes.png', content_type: 'image/png')
  activity6.save!

  activity7 = Activity.new(
  title: "Bump-Games",
  category: "sport",
  address: "16 avenue Louis de Broglie, 33600 Pessac",
  description: "Découvrez les activités Bump Games à Bordeaux !
Avec Bubble Bump, Archery Bump et Laser Bump il y en a pour toutes les envies, pour les petits comme pour les grands.
Éclatez-vous avec les Bump-Games dans la Belle Endormie et partout en Gironde.",
  website_url: "https://www.bump-games.com/decouvrir-bump-games-a-bordeaux.php/",
  duration: 90,
  price: 20,
  rating: 4
  )
  activity7.photo.attach(io: URI.open('https://res.cloudinary.com/dfuxvscct/image/upload/v1622636370/bump-bordeaux_dnzlhm.png'), filename: 'nes.png', content_type: 'image/png')
  activity7.save!

  activity8 = Activity.new(
  title: "John Doe escape game",
  category: "sport",
  address: "7 Rue d'Alembert, 33000 Bordeaux",
  description: "Votre cerveau seul ne vous aidera pas, vous devrez courir, crier ou faire des choix pour vous échapper. Vous pensez être seuls dans la salle? Vous croyez pouvoir sortir sans avoir transpiré ?
  Oubliez tout, aujourd'hui vous allez vivre une expérience unique.",
  website_url: "https://bordeaux.john-doe.fr/",
  duration: 90,
  price: 36,
  rating: 4
  )
  activity8.photo.attach(io: URI.open('https://res.cloudinary.com/dfuxvscct/image/upload/v1622636077/escape-game_hgyzef.png'), filename: 'nes.png', content_type: 'image/png')
  activity8.save!

  puts "Finished !"

  puts "create events"

  event1 = Event.new(
    start_time: nil,
    wish_list: user.wish_list,
    activity: Activity.all.sample
  )
  event1.save!

  event2 = Event.new(
    start_time: nil,
    wish_list: user.wish_list,
    activity: Activity.all.sample
  )
  event2.save!

  event3 = Event.new(
    start_time: nil,
    wish_list: user.wish_list,
    activity: Activity.all.sample
  )
  event3.save!

  event4 = Event.new(
    start_time: nil,
    wish_list: user.wish_list,
    activity: Activity.all.sample
  )
  event4.save!

  puts "finished !"
