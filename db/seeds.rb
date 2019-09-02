# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
User.destroy_all
Client.destroy_all
Appartement.destroy_all
Simulation.destroy_all


puts 'Creating users...'

User.create!(
  prenom: 'Michel',
  nom: 'Durand',
  email: 'michel.durand@cgp.com',
  password: 'password',
  carte_t: 'T01012019')

User.create!(
  prenom: 'Jean',
  nom: 'Dupont',
  email: 'jean@dupont.com',
  password: 'password',
  carte_t: 'T12345678')

puts 'Finished creating users...'

puts 'Creating appartements...'

Appartement.create!(
    livraison: 'T4 2019',
    actabilite: 'actable',
    disponibilite: 'Disponible',
    prix: '350000',
    lot: 'N°209',
    etage: 'R+3',
    typologie: '3P',
    ville: 'Honfleur',
    adresse: '178 Chemin du Mont Bouis',
    nom_programme: 'Le Clos Saint-Germain',
    promoteur: 'Nexity',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '75'
    )

Appartement.create!(
    livraison: 'T1 2020',
    actabilite: 'actable',
    disponibilite: 'Indisponible',
    prix: '230000',
    lot: 'N°62',
    etage: 'R+5',
    typologie: '3P',
    ville: 'Paris',
    adresse: 'Porte de la Villette',
    nom_programme: 'Les ilots de Chaumont',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '75'
    )

Appartement.create!(
    livraison: 'T2 2020',
    actabilite: 'non-actable',
    disponibilite: 'disponible',
    prix: '150000',
    lot: 'N°12',
    etage: 'R+2',
    typologie: '1P',
    ville: 'Pont-du-Casse',
    adresse: '519 Avenue de Cahors',
    nom_programme: "Fontaine d'Auteuil",
    promoteur: 'Kaufman & Broad',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '75'
    )

Appartement.create!(
    livraison: 'T4 2019',
    actabilite: 'actable',
    disponibilite: 'Non-disponible',
    prix: '270000',
    lot: 'N°27',
    etage: 'R+2',
    typologie: '2P',
    ville: 'Boulogne',
    adresse: '86 Rue Gallieni',
    nom_programme: 'Carre Seine',
    promoteur: 'Bouygues Immmobilier',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '75'
    )

Appartement.create!(
    livraison: 'T3 2019',
    actabilite: 'actable',
    disponibilite: 'disponible',
    prix: '290000',
    lot: 'N°27',
    etage: 'R+2',
    typologie: '3P',
    ville: 'Nice',
    adresse: '380 Avenue de Rimiez',
    nom_programme: 'Le Domaine de Gairaut',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06'
    )

Appartement.create!(
    livraison: 'T2 2019',
    actabilite: 'actable',
    disponibilite: 'disponible',
    prix: '370000',
    lot: 'N°11',
    etage: 'R+3',
    typologie: '3P',
    ville: 'Nice',
    adresse: '88 Avenue Raoul Dufy',
    nom_programme: 'Corniche Marine',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06'
    )

Appartement.create!(
    livraison: 'T2 2021',
    actabilite: 'actable',
    disponibilite: 'disponible',
    prix: '350000',
    lot: 'N°11',
    etage: 'R+3',
    typologie: '3P',
    ville: 'Nice',
    adresse: '3 ruelle Saint Roch',
    nom_programme: 'Carré Sérénice',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06'
    )

Appartement.create!(
    livraison: 'T1 2022',
    actabilite: 'actable',
    disponibilite: 'disponible',
    prix: '262000',
    lot: 'N°13',
    etage: 'R+3',
    typologie: '2P',
    ville: 'Nice',
    adresse: '34 avenue des Diables Bleus',
    nom_programme: 'Nice Way',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06'
    )

Appartement.create!(
    livraison: 'T1 2022',
    actabilite: 'actable',
    disponibilite: 'non-disponible',
    prix: '281000',
    lot: 'N°7',
    etage: 'R+2',
    typologie: '3P',
    ville: 'Grasse',
    adresse: '15 chemin du Bois Fleuri',
    nom_programme: 'Secret Park',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06'
    )

Appartement.create!(
    livraison: 'T4 2019',
    actabilite: 'actable',
    disponibilite: 'disponible',
    prix: '286000',
    lot: 'N°5',
    etage: 'R+1',
    typologie: '3P',
    ville: 'Cannes',
    adresse: '152/154 Avenue Francis Tonner',
    nom_programme: 'Villa Alice',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06'
    )

Appartement.create!(
    livraison: 'T4 2022',
    actabilite: 'non-actable',
    disponibilite: 'non-disponible',
    prix: '286000',
    lot: 'N°5',
    etage: 'R+1',
    typologie: '3P',
    ville: 'Mougins',
    adresse: '539 avenue de Tournamy',
    nom_programme: 'Cours des Arts',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06'
    )

Appartement.create!(
    livraison: 'T4 2022',
    actabilite: 'actable',
    disponibilite: 'disponible',
    prix: '185000',
    lot: 'N°9',
    etage: 'R+2',
    typologie: '1P',
    ville: 'Mougins',
    adresse: '489 Avenue de Tournamy',
    nom_programme: 'Coeur Mougins',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06'
    )

Appartement.create!(
    livraison: 'T4 2022',
    actabilite: 'actable',
    disponibilite: 'disponible',
    prix: '216000',
    lot: 'N°13',
    etage: 'R+3',
    typologie: '2P',
    ville: 'Mougins',
    adresse: '489 Avenue de Tournamy',
    nom_programme: 'Coeur Mougins',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06'
    )

Appartement.create!(
    livraison: 'T4 2022',
    actabilite: 'actable',
    disponibilite: 'disponible',
    prix: '301000',
    lot: 'N°14',
    etage: 'R+4',
    typologie: '3P',
    ville: 'Mougins',
    adresse: '489 Avenue de Tournamy',
    nom_programme: 'Coeur Mougins',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06'
    )

Appartement.create!(
    livraison: 'T4 2020',
    actabilite: 'actable',
    disponibilite: 'disponible',
    prix: '685000',
    lot: 'N°11',
    etage: 'R+3',
    typologie: '3P',
    ville: 'Nantes',
    adresse: '25 rue de la Cour Bastille',
    nom_programme: 'Cour Bastille',
    promoteur: 'Nexity',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '44'
    )

Appartement.create!(
    livraison: 'T4 2020',
    actabilite: 'actable',
    disponibilite: 'disponible',
    prix: '175000',
    lot: 'N°17',
    etage: 'R+1',
    typologie: '2P',
    ville: 'Coueron',
    adresse: '35 rue Jean Jaures',
    nom_programme: 'Les Allees de la Bretèche',
    promoteur: 'Nexity',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '44'
    )

Appartement.create!(
    livraison: 'T4 2020',
    actabilite: 'non-actable',
    disponibilite: 'disponible',
    prix: '273000',
    lot: 'N°7',
    etage: 'R+3',
    typologie: '2P',
    ville: 'Lyon',
    adresse: '8 rue Pierre Valdo',
    nom_programme: 'Ivory Park',
    promoteur: 'Nexity',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '69'
    )

Appartement.create!(
    livraison: 'T4 2020',
    actabilite: 'actable',
    disponibilite: 'disponible',
    prix: '357000',
    lot: 'N°10',
    etage: 'R+4',
    typologie: '3P',
    ville: 'Lyon',
    adresse: '28 rue Pierre Valdo',
    nom_programme: 'Factory Link',
    promoteur: 'Nexity',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '69'
    )

Appartement.create!(
   livraison: 'T4 2019',
   actabilite: 'actable',
   disponibilite: 'disponible',
   prix: '4200000',
   lot: 'N°10',
   etage: 'R+4',
   typologie: '2P',
   ville: 'Cannes',
   adresse: 'rue d\'Antibes',
   nom_programme: 'Factory Link',
   promoteur: 'Nexity',
   logo_promoteur: 'http:',
   image: 'http:',
   departement: '06'
   )
Appartement.create!(
   livraison: 'T4 2019',
   actabilite: 'actable',
   disponibilite: 'disponible',
   prix: '10200000',
   lot: 'N°10',
   etage: 'R+4',
   typologie: '3P',
   ville: 'Cannes',
   adresse: 'la Croisette',
   nom_programme: 'Factory Link',
   promoteur: 'Nexity',
   logo_promoteur: 'http:',
   image: 'http:',
   departement: '06'
   )
Appartement.create!(
   livraison: 'T4 2019',
   actabilite: 'actable',
   disponibilite: 'disponible',
   prix: '9200000',
   lot: 'N°10',
   etage: 'R+4',
   typologie: '3P',
   ville: 'Cannes',
   adresse: 'la Croisette',
   nom_programme: 'Factory Link',
   promoteur: 'Nexity',
   logo_promoteur: 'http:',
   image: 'http:',
   departement: '06'
   )
Appartement.create!(
   livraison: 'T4 2019',
   actabilite: 'actable',
   disponibilite: 'disponible',
   prix: '3200000',
   lot: 'N°10',
   etage: 'R+4',
   typologie: '3P',
   ville: 'Cannes',
   adresse: '78 Avenue Francis Tonner',
   nom_programme: 'Factory Link',
   promoteur: 'Nexity',
   logo_promoteur: 'http:',
   image: 'http:',
   departement: '06'
   )
Appartement.create!(
   livraison: 'T4 2019',
   actabilite: 'actable',
   disponibilite: 'disponible',
   prix: '3200000',
   lot: 'N°10',
   etage: 'R+4',
   typologie: '3P',
   ville: 'Cannes',
   adresse: '26 Avenue de Lattre de Tassigny',
   nom_programme: 'Factory Link',
   promoteur: 'Nexity',
   logo_promoteur: 'http:',
   image: 'http:',
   departement: '06'
   )
Appartement.create!(
   livraison: 'T4 2019',
   actabilite: 'actable',
   disponibilite: 'disponible',
   prix: '505094',
   lot: 'N°10',
   etage: 'R+4',
   typologie: '2P',
   ville: 'Cannes',
   adresse: '2 Boulevard Delaup',
   nom_programme: 'Factory Link',
   promoteur: 'Nexity',
   logo_promoteur: 'http:',
   image: 'http:',
   departement: '06'
   )
Appartement.create!(
   livraison: 'T4 2019',
   actabilite: 'actable',
   disponibilite: 'disponible',
   prix: '395093',
   lot: 'N°10',
   etage: 'R+4',
   typologie: '3P',
   ville: 'Cannes',
   adresse: '7 Avenue Pierre Semard',
   nom_programme: 'Factory Link',
   promoteur: 'Nexity',
   logo_promoteur: 'http:',
   image: 'http:',
   departement: '06'
   )
Appartement.create!(
   livraison: 'T4 2019',
   actabilite: 'actable',
   disponibilite: 'disponible',
   prix: '723393',
   lot: 'N°10',
   etage: 'R+4',
   typologie: '3P',
   ville: 'Cannes',
   adresse: '4 Avenue Andre Capron',
   nom_programme: 'Factory Link',
   promoteur: 'Nexity',
   logo_promoteur: 'http:',
   image: 'http:',
   departement: '06'
   )
Appartement.create!(
   livraison: 'T4 2019',
   actabilite: 'actable',
   disponibilite: 'disponible',
   prix: '602393',
   lot: 'N°10',
   etage: 'R+4',
   typologie: '3P',
   ville: 'Cannes',
   adresse: '111 Rue Antibes',
   nom_programme: 'Factory Link',
   promoteur: 'Nexity',
   logo_promoteur: 'http:',
   image: 'http:',
   departement: '06'
   )
Appartement.create!(
   livraison: 'T4 2019',
   actabilite: 'actable',
   disponibilite: 'disponible',
   prix: '302393',
   lot: 'N°10',
   etage: 'R+4',
   typologie: '2P',
   ville: 'Cannes',
   adresse: '18 Rue des Freres Pradignac',
   nom_programme: 'Factory Link',
   promoteur: 'Nexity',
   logo_promoteur: 'http:',
   image: 'http:',
   departement: '06'
   )


Appartement.create!(
    livraison: 'T4 2019',
    actabilite: 'actable',
    disponibilite: 'Disponible',
    prix: '350000',
    lot: 'N°209',
    etage: 'R+3',
    typologie: '2P',
    ville: 'Nice',
    adresse: '2 Avenue Auguste Verola',
    nom_programme: 'Maison Neuve',
    promoteur: 'Nexity',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06'
    )

Appartement.create!(
    livraison: 'T1 2020',
    actabilite: 'actable',
    disponibilite: 'Indisponible',
    prix: '220000',
    lot: 'N°62',
    etage: 'R+5',
    typologie: '3P',
    ville: 'Paris',
    adresse: 'Porte de Saint Honore',
    nom_programme: 'Les ilots du Pont de Seine',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06'
    )

Appartement.create!(
    livraison: 'T4 2019',
    actabilite: 'non-actable',
    disponibilite: 'disponible',
    prix: '150000',
    lot: 'N°12',
    etage: 'R+2',
    typologie: '1P',
    ville: 'Pont-du-Casse',
    adresse: '519 Avenue de Cahors',
    nom_programme: "Fontaine d'Auteuil",
    promoteur: 'Kaufman & Broad',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06'
    )

Appartement.create!(
    livraison: 'T4 2019',
    actabilite: 'actable',
    disponibilite: 'Non-disponible',
    prix: '270000',
    lot: 'N°27',
    etage: 'R+2',
    typologie: '2P',
    ville: 'Boulogne',
    adresse: '86 Rue Gallieni',
    nom_programme: 'Carre Seine',
    promoteur: 'Bouygues Immmobilier',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06'
    )

Appartement.create!(
    livraison: 'T4 2019',
    actabilite: 'actable',
    disponibilite: 'disponible',
    prix: '290000',
    lot: 'N°27',
    etage: 'R+2',
    typologie: '3P',
    ville: 'Nice',
    adresse: '43 Rue de France',
    nom_programme: 'Le Domaine de Gairaut',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06'
    )

Appartement.create!(
    livraison: 'T4 2019',
    actabilite: 'actable',
    disponibilite: 'disponible',
    prix: '370000',
    lot: 'N°11',
    etage: 'R+3',
    typologie: '3P',
    ville: 'Nice',
    adresse: '88 Avenue Raoul Dufy',
    nom_programme: 'Corniche Marine',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06'
    )

Appartement.create!(
    livraison: 'T4 2019',
    actabilite: 'actable',
    disponibilite: 'disponible',
    prix: '350000',
    lot: 'N°11',
    etage: 'R+3',
    typologie: '3P',
    ville: 'Nice',
    adresse: '3 ruelle Saint Roch',
    nom_programme: 'Carre Serenice',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06'
    )

Appartement.create!(
    livraison: 'T4 2019',
    actabilite: 'actable',
    disponibilite: 'disponible',
    prix: '262000',
    lot: 'N°13',
    etage: 'R+3',
    typologie: '2P',
    ville: 'Nice',
    adresse: '125 Prom. des Anglais',
    nom_programme: 'Nice Way',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06'
    )

Appartement.create!(
    livraison: 'T4 2019',
    actabilite: 'actable',
    disponibilite: 'non-disponible',
    prix: '281000',
    lot: 'N°7',
    etage: 'R+2',
    typologie: '3P',
    ville: 'Nice',
    adresse: '4 Rue Bonaparte',
    nom_programme: 'Secret Park',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06'
    )

Appartement.create!(
    livraison: 'T4 2019',
    actabilite: 'actable',
    disponibilite: 'disponible',
    prix: '286000',
    lot: 'N°5',
    etage: 'R+1',
    typologie: '3P',
    ville: 'Nice',
    adresse: '152/154 Avenue Francis Tonner',
    nom_programme: 'Villa Alice',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06'
    )

Appartement.create!(
    livraison: 'T4 2019',
    actabilite: 'non-actable',
    disponibilite: 'non-disponible',
    prix: '286000',
    lot: 'N°5',
    etage: 'R+1',
    typologie: '3P',
    ville: 'Nice',
    adresse: '26 Avenue Malaussena',
    nom_programme: 'Cours des Arts',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06'
    )

Appartement.create!(
    livraison: 'T4 2019',
    actabilite: 'actable',
    disponibilite: 'disponible',
    prix: '185000',
    lot: 'N°9',
    etage: 'R+2',
    typologie: '3P',
    ville: 'Nice',
    adresse: '8 Rue Rossini',
    nom_programme: 'Coeur Mougins',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06'
    )

Appartement.create!(
    livraison: 'T4 2019',
    actabilite: 'actable',
    disponibilite: 'disponible',
    prix: '216000',
    lot: 'N°13',
    etage: 'R+3',
    typologie: '2P',
    ville: 'Nice',
    adresse: '81, Rue de France',
    nom_programme: 'Coeur Mougins',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06'
    )

Appartement.create!(
    livraison: 'T4 2019',
    actabilite: 'actable',
    disponibilite: 'disponible',
    prix: '301000',
    lot: 'N°14',
    etage: 'R+4',
    typologie: '3P',
    ville: 'Nice',
    adresse: '4 Rue Bonaparte',
    nom_programme: 'Coeur Mougins',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06'
    )

Appartement.create!(
    livraison: 'T4 2019',
    actabilite: 'actable',
    disponibilite: 'disponible',
    prix: '685000',
    lot: 'N°11',
    etage: 'R+3',
    typologie: '3P',
    ville: 'Nice',
    adresse: '25 rue de la Cour Bastille',
    nom_programme: 'Cour Bastille',
    promoteur: 'Nexity',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06'
    )

Appartement.create!(
    livraison: 'T4 2019',
    actabilite: 'actable',
    disponibilite: 'disponible',
    prix: '106000',
    lot: 'N°17',
    etage: 'R+1',
    typologie: '2P',
    ville: 'Nice',
    adresse: '7 Prom. des Anglais',
    nom_programme: 'Les Allees de la Bretèche',
    promoteur: 'Nexity',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06'
    )

Appartement.create!(
    livraison: 'T4 2019',
    actabilite: 'non-actable',
    disponibilite: 'disponible',
    prix: '273000',
    lot: 'N°7',
    etage: 'R+3',
    typologie: '2P',
    ville: 'Nice',
    adresse: '8 Rue Alphonse Karr',
    nom_programme: 'Ivory Park',
    promoteur: 'Nexity',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06'
    )

Appartement.create!(
    livraison: 'T4 2019',
    actabilite: 'actable',
    disponibilite: 'disponible',
    prix: '357000',
    lot: 'N°10',
    etage: 'R+4',
    typologie: '5P',
    ville: 'Nice',
    adresse: '27 av Georges Clemenceau',
    nom_programme: 'Factory Link',
    promoteur: 'Nexity',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06'
    )


puts 'Finished creating apartments...'
