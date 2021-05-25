puts "destruction en cours"
Activity.destroy_all
puts "done"

puts "creating activities"
activity1 = Activity.new(
  title: "Marathon de Bordeaux",
  category: "Sport",
  address: "8 rue Notre Dame, 33000 Bordeaux", 
  description: "Le marathon de Bordeaux Métropole est un événement populaire qui allie sport et divertissement, et se veut une manière différente de découvrir le vignoble bordelais et le patrimoine architectural de la ville. Il a lieu début avril au départ du site de Bordeaux-Port de la Lune et traverse plusieurs communes de l’agglomération bordelaise. Il serpente ensuite entre les vignobles et les bords de Garonne.",
  website_url: "https://www.marathondebordeauxmetropole.com/",
  duration: 240,
  price: 100,
  rating: 5
  )

  activity2 = Activity.new(
  title: "Musée d'Aquitaine",
  category: "Culture",
  address: "20 Cours Pasteur, 33000 Bordeaux", 
  description: "Le musée d’Aquitaine à Bordeaux rassemble les objets et les documents liés à l’histoire de Bordeaux et de l’Aquitaine, de la Préhistoire à l’Époque contemporaine. Il regroupe administrativement le Centre national Jean-Moulin de Bordeaux et le musée Goupil dont il conserve la collection.",
  website_url: "http://www.musee-aquitaine-bordeaux.fr/",
  duration: 120,
  price: 5,
  rating: 4
  )

  activity3 = Activity.new(
  title: "Château Pape Clément",
  category: "Gastronomie",
  address: "216 avenue Dr Nancel Pénard, 33600 Pessac", 
  description: "Après une échappée dans le parc, entrez dans le cuvier bois dédié à la vinification du vin rouge, assorti de ses piges en inox et faites-vous conter ses secrets de fabrication.
  Pénétrez enfin dans le chai à barriques où repose notre vin pendant 18 mois et découvrez les subtilités d’un élevage réussi.  
  Terminez votre visite par la dégustation de 3 vins de terroirs différents dont le Château Pape Clément rouge.",
  website_url: "https://www.chateau-pape-clement.fr/",
  duration: 90,
  price: 20,
  rating: 4
  )

  puts "Finished !"