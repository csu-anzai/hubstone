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

puts 'Creating appartements...'
Appartement.create!(
    livraison: 'T4 2019',
    actabilite: 'actable',
    disponibilite: 'Disponible',
    prix: '350000',
    lot: 'N°209',
    etage: 'R+3',
    typologie: '4P',
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
