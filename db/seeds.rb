# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

genres = ["Action","Action adventure","Adventure","Puzzle","Role playing","Simulation","Strategy","Sports","MMO"]

genres.each { |genre_name| Genre.create!(name: genre_name )}

Game.create!([
  { title: 'God Of War',
  writers: 'Matthew Sophos-Richard Zangrande Gauber-Cory Barlog',
  directors: 'Cory Barlog',
  production_company:'SCEA Santa Monica Studios',
  release_date: '2018-04-20',
  description: 'After wiping out the gods of Mount Olympus, Kratos moves on to the frigid lands of Scandinavia, where he and his son must embark on an odyssey across a dangerous world of gods and monsters.',
  cover_image: 'god-of-war.jpeg'

  },
  { title: 'Fifa 24',
  writers: '',
  directors: '',
  production_company:'EA Sports',
  release_date: '2023-09-29',
  description: 'FIFA 24 is a football simulation video game. It is the 30th installment in the FIFA series that is developed by EA Sports, and the final installment under the FIFA banner.',
  cover_image:'fifa-24.jpeg'
  },
  { title: 'Apex Legends',
  writers:
   'Sam Gill-Manny Hagopian-Ashley Reed',
  directors: '',
  production_company:'Digital One-Respawn Entertainment',
  release_date: '2019-02-4',
  description: 'Master an ever-growing roster of legendary characters with powerful abilities and experience strategic squad play and innovative gameplay in the next evolution of Hero Shooter and Battle Royale.',
  cover_image:'apex-legends.jpeg',

  },
  { title: "Baldur's Gate III",
  writers: 'Sarah Baylus-Diana Chaudron-John Corcoran',
  directors: 'Swen Vincke',
  production_company:'Larian Studios',
  release_date: '2023-08-3',
  description: 'Return to Faerun in a tale of fellowship and betrayal, and the lure of absolute power. Mysterious abilities are awakening inside you. Resist, and turn darkness against itself, or, embrace corruption, and become ultimate evil.',
  cover_image:'baldur-s-gate.jpeg'
  },
  { title: "Battlefield 2042",
  writers: 'Flora Barre-Emily Grace Buck-Diana Chaudron',
  directors: 'Eric Holmes-Glen Dongoghue-Kate Saxon',
  production_company:'Digital Illusions CE(DICE)',
  release_date: '2021-11-19',
  description: 'In the near future the world has entered a set of constant chaos with a massive immigration crisis birthing a rebellion against the last all encompassing world government.',
  cover_image:'battlefield-2042.jpeg'
  },
  { title: "Call of Duty: Modern Warfare",
  writers: 'Brian Bloom-Ben Chaney-Jimmie Myers',
  directors: '',
  production_company:'Infinity Ward',
  release_date: '2019-10-25',
  description: 'Captain Price and the SAS partner with the CIA and the Urzikstani Liberation Force to retrieve stolen chemical weapons. The fight takes you from London to the Middle East and beyond, as this joint task force battles to stop a global war.',
  cover_image:'call-of-duty.jpeg'
  },
  { title: "Grand Theft Auto V",
  writers: 'Dan Houser-Rupert Humphries-Michael Unsworth',
  directors: '',
  production_company:'Rockstar Games-Rockstart North',
  release_date: '2013-9-17',
  description: 'Three very different criminals team up for a series of heists and walk into some of the most thrilling experiences in the corrupt city of Los Santos.',
  cover_image:'gta-v.jpeg'
  },
  { title: "LittleBigPlanet",
  writers: 'Darrick Bachman-Lauren Faust-Amy Keating Rogers',
  directors: '',
  production_company:'Media Molecule',
  release_date: '2008-10-21',
  description: 'A puzzle-platformer video game for the PlayStation 3, based on user-generated content. Offering a large array of customisable costumes and online features.',
  cover_image:'little-big-planet.jpeg'
  },

])
