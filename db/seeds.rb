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
    adresse: '178 Chemin du Mont Bouis, La Riviere-Saint-Sauveur
',
    nom_programme: 'Le Clos Saint-Germain',
    promoteur: 'Nexity',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '75',
    loyer: '840',
    charges: '1200',
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
    adresse: 'Porte de la Villette, Paris',
    nom_programme: 'Les ilots de Chaumont',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '75',
    loyer: '680',
    charges: '810',
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
    adresse: '519 Avenue de Cahors, Pont-du-Casse',
    nom_programme: "Fontaine d'Auteuil",
    promoteur: 'Kaufman & Broad',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '75',
    loyer: '450',
    charges: '630',
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
    adresse: '86 Rue Gallieni, Boulogne',
    nom_programme: 'Carre Seine',
    promoteur: 'Bouygues Immmobilier',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '75',
    loyer: '510',
    charges: '680',
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
    adresse: '85 Avenue Raoul Dufy, Nice',
    nom_programme: 'Le Domaine de Gairaut',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06',
    loyer: '930',
    charges: '1460',
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
    adresse: '88 Avenue Raoul Dufy, Nice',
    nom_programme: 'Corniche Marine',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06',
    loyer: '1100',
    charges: '1600',
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
    adresse: '3 ruelle Saint Roch, Nice',
    nom_programme: 'Carré Sérénice',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06',
    loyer: '1050',
    charges: '1490',
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
    adresse: '34 avenue des Diables Bleus, Nice',
    nom_programme: 'Nice Way',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06',
    loyer: '880',
    charges: '1110',
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
    adresse: '15 chemin du Bois Fleuri, Grasse',
    nom_programme: 'Secret Park',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06',
    loyer: '1000',
    charges: '1420',
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
    adresse: '152/154 Avenue Francis Tonner, Cannes',
    nom_programme: 'Villa Alice',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06',
    loyer: '985',
    charges: '1310',
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
    adresse: '539 avenue de Tournamy, Mougins',
    nom_programme: 'Cours des Arts',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06',
    loyer: '880',
    charges: '1230',
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
    adresse: '489 Avenue de Tournamy, Mougins',
    nom_programme: 'Coeur Mougins',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06',
    loyer: '680',
    charges: '810',
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
    adresse: '489 Avenue de Tournamy, Mougins',
    nom_programme: 'Coeur Mougins',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06',
    loyer: '760',
    charges: '1050',
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
    adresse: '489 Avenue de Tournamy, Mougins',
    nom_programme: 'Coeur Mougins',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06',
    loyer: '1140',
    charges: '1700',
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
    adresse: '25 rue de la Cour Bastille, Nantes',
    nom_programme: 'Cour Bastille',
    promoteur: 'Nexity',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '44',
    loyer: '2400',
    charges: '3600',
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
    adresse: '35 rue Jean Jaures, Coueron',
    nom_programme: 'Les Allees de la Bretèche',
    promoteur: 'Nexity',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '44',
    loyer: '530',
    charges: '750',
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
    adresse: '8 rue Pierre Valdo, Lyon',
    nom_programme: 'Ivory Park',
    promoteur: 'Nexity',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '69',
    loyer: '1300',
    charges: '1740',
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
    adresse: '28 rue Pierre Valdo, Lyon',
    nom_programme: 'Factory Link',
    promoteur: 'Nexity',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '69',
    loyer: '1600',
    charges: '2800',
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
   adresse: 'rue d\'Antibes, Cannes',
   nom_programme: 'Factory Link',
   promoteur: 'Nexity',
   logo_promoteur: 'http:',
   image: 'http:',
   departement: '06',
   loyer: '1820',
    charges: '2680',
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
   adresse: 'la Croisette, Cannes',
   nom_programme: 'Factory Link',
   promoteur: 'Nexity',
   logo_promoteur: 'http:',
   image: 'http:',
   departement: '06',
   loyer: '3800',
    charges: '5620',
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
   adresse: 'la Croisette, Cannes',
   nom_programme: 'Factory Link',
   promoteur: 'Nexity',
   logo_promoteur: 'http:',
   image: 'http:',
   departement: '06',
   loyer: '3500',
    charges: '4700',
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
   adresse: '78 Avenue Francis Tonner, Cannes',
   nom_programme: 'Factory Link',
   promoteur: 'Nexity',
   logo_promoteur: 'http:',
   image: 'http:',
   departement: '06',
   loyer: '1200',
    charges: '1620',
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
   adresse: '26 Avenue de Lattre de Tassigny, Cannes',
   nom_programme: 'Factory Link',
   promoteur: 'Nexity',
   logo_promoteur: 'http:',
   image: 'http:',
   departement: '06',
   loyer: '1500',
    charges: '2240',
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
   adresse: '2 Boulevard Delaup, Cannes',
   nom_programme: 'Factory Link',
   promoteur: 'Nexity',
   logo_promoteur: 'http:',
   image: 'http:',
   departement: '06',
   loyer: '2000',
    charges: '3000',
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
   adresse: '7 Avenue Pierre Semard, Cannes',
   nom_programme: 'Factory Link',
   promoteur: 'Nexity',
   logo_promoteur: 'http:',
   image: 'http:',
   departement: '06',
   loyer: '1800',
    charges: '2800',
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
   adresse: '4 Avenue Andre Capron, Cannes',
   nom_programme: 'Factory Link',
   promoteur: 'Nexity',
   logo_promoteur: 'http:',
   image: 'http:',
   departement: '06',
   loyer: '2600',
  charges: '3840',
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
   adresse: '111 Rue Antibes, Cannes',
   nom_programme: 'Factory Link',
   promoteur: 'Nexity',
   logo_promoteur: 'http:',
   image: 'http:',
   departement: '06',
   loyer: '2500',
    charges: '3700',
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
   adresse: '18 Rue des Freres Pradignac, Cannes',
   nom_programme: 'Factory Link',
   promoteur: 'Nexity',
   logo_promoteur: 'http:',
   image: 'http:',
   departement: '06',
   loyer: '1120',
    charges: '1830',
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
    adresse: '2 Avenue Auguste Verola, Nice',
    nom_programme: 'Maison Neuve',
    promoteur: 'Nexity',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06',
    loyer: '1130',
    charges: '1740',
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
    adresse: 'Porte de Saint Honore, Paris',
    nom_programme: 'Les ilots du Pont de Seine',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06',
    loyer: '820',
    charges: '1230',
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
    adresse: '519 Avenue de Cahors, Pont-du-Casse',
    nom_programme: "Fontaine d'Auteuil",
    promoteur: 'Kaufman & Broad',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06',
    loyer: '480',
    charges: '780',
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
    adresse: '86 Rue Gallieni, Boulogne',
    nom_programme: 'Carre Seine',
    promoteur: 'Bouygues Immmobilier',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06',
    loyer: '980',
    charges: '1430',
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
    adresse: '9 ruelle Saint Roch, Nice',
    nom_programme: 'Le Domaine de Gairaut',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06',
    loyer: '1170',
    charges: '1640',
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
    adresse: '88 Avenue Raoul Dufy, Nice',
    nom_programme: 'Corniche Marine',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06',
    loyer: '1460',
    charges: '2230',
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
    adresse: '3 ruelle Saint Roch, Nice',
    nom_programme: 'Carre Serenice',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06',
    loyer: '1150',
    charges: '1760',
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
    adresse: '125 Prom. des Anglais, Nice',
    nom_programme: 'Nice Way',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06',
    loyer: '880',
    charges: '1220',
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
    adresse: '4 Rue Bonaparte, Nice',
    nom_programme: 'Secret Park',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06',
    loyer: '1120',
    charges: '2000',
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
    adresse: '152/154 Avenue Francis Tonner, Nice',
    nom_programme: 'Villa Alice',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06',
    loyer: '1120',
    charges: '1920',
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
    adresse: '26 Avenue Malaussena, Nice',
    nom_programme: 'Cours des Arts',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06',
    loyer: '1120',
    charges: '1920',
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
    adresse: '8 Rue Rossini, Nice',
    nom_programme: 'Coeur Mougins',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06',
    loyer: '820',
    charges: '1300',
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
    adresse: '81, Rue de France, Nice',
    nom_programme: 'Coeur Mougins',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06',
    loyer: '920',
    charges: '1200',
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
    adresse: '4 Rue Bonaparte, Nice',
    nom_programme: 'Coeur Mougins',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06',
    loyer: '1400',
    charges: '2300',
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
    adresse: '25 rue de la Cour Bastille, Nice',
    nom_programme: 'Cour Bastille',
    promoteur: 'Nexity',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06',
    loyer: '2710',
    charges: '4000',
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
    adresse: '7 Prom. des Anglais, Nice',
    nom_programme: 'Les Allees de la Bretèche',
    promoteur: 'Nexity',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06',
    loyer: '380',
    charges: '640',
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
    adresse: '8 Rue Alphonse Karr, Nice',
    nom_programme: 'Ivory Park',
    promoteur: 'Nexity',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06',
    loyer: '820',
    charges: '1530',
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
    adresse: '27 av Georges Clemenceau, Nice',
    nom_programme: 'Factory Link',
    promoteur: 'Nexity',
    logo_promoteur: 'http:',
    image: 'http:',
    departement: '06',
    loyer: '1240',
    charges: '1930',
    )

puts 'Love you mum'
puts 'Finished creating apartments...'

puts 'Creating clients...'

Client.create!(
    prenom: 'Xavier',
    nom: 'Niel',
    civilite: 'Monsieur',
    tmi: '0.3',
    user_id: User.all[0].id,
    image: 'https://res.cloudinary.com/agazielly/image/upload/v1567439284/Xavier_Niel004_snvlvz.jpg'
    )

Client.create!(
    prenom: 'françois-henri',
    nom: 'Pinault',
    civilite: 'Monsieur',
    tmi: '0.14',
    user_id: User.all[0].id,
    image: 'https://res.cloudinary.com/agazielly/image/upload/v1567439283/francois-henri-pinault_fnzkww.jpg'
    )

puts 'Finished creating clients...'
sleep 2
puts 'Success is not final, failure is not fatal: it is the courage to continue that counts.'
