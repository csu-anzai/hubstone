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
    actabilite: 'Actable',
    disponibilité: 'Disponible',
    prix: '350 000',
    lot: 'N°209',
    étage: 'R+3',
    typologie: '4P',
    nom_programme: 'Le Clos Saint-Germain',
    promoteur: 'Nexity',
    logo_promoteur: 'http:',
    image: 'http:',
    département: '75'
    )

Appartement.create!(
    livraison: 'T1 2020',
    actabilite: 'Actable',
    disponibilité: 'Indisponible',
    prix: '230 000',
    lot: 'N°62',
    étage: 'R+5',
    typologie: '3P',
    nom_programme: 'Les ilots de Chaumont',
    promoteur: 'Cogedim',
    logo_promoteur: 'http:',
    image: 'http:',
    département: '75'
    )

Appartement.create!(
    livraison: 'T2 2020',
    actabilite: 'Non-actable',
    disponibilité: 'disponible',
    prix: '150 000',
    lot: 'N°12',
    étage: 'R+2',
    typologie: '1P',
    nom_programme: "Fontaine d'Auteuil",
    promoteur: 'Kaufman & Broad',
    logo_promoteur: 'http:',
    image: 'http:',
    département: '75'
    )

Appartement.create!(
    livraison: 'T4 2019',
    actabilite: 'actable',
    disponibilité: 'Non-disponible',
    prix: '270 000',
    lot: 'N°27',
    étage: 'R+2',
    typologie: '2P',
    nom_programme: 'Carre Seine',
    promoteur: 'Bouygues Immmobilier',
    logo_promoteur: 'http:',
    image: 'http:',
    département: '75'
    )
