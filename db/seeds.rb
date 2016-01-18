# User.create!([
#   {email: "jay@email.com", encrypted_password: "$2a$10$V8IF3aqkDM62ch4EcmzkZ.T6okn74wO79FvTUm30.0tbU5apI1IVa", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 15, current_sign_in_at: "2016-01-14 09:37:43", last_sign_in_at: "2016-01-14 08:18:39", current_sign_in_ip: "::1", last_sign_in_ip: "::1", name: "Jay", role: "admin"},
#   {email: "rick@email.com", encrypted_password: "$2a$10$4vwQy246MQVnuxOhb6Wzbu1aJoe5WQ1B5MYqyEDDJa78qZ.DyyqIK", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-01-12 16:22:21", last_sign_in_at: "2016-01-12 16:22:21", current_sign_in_ip: "::1", last_sign_in_ip: "::1", name: "Rick", role: nil},
#   {email: "val@email.com", encrypted_password: "$2a$10$1EPteFRPdljDHGbSmTTg7ufyZ8FgjbbxKCMZ3bpm5QTiHrCegIgFu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 11, current_sign_in_at: "2016-01-14 09:35:40", last_sign_in_at: "2016-01-14 08:12:25", current_sign_in_ip: "::1", last_sign_in_ip: "::1", name: "Val", role: nil},
#   {email: "nickh@email.com", encrypted_password: "$2a$10$3HDFCCy1SgRArczXSwQu3Oe5fbXkRgsWs8ZfZli.d0E4ytgPfZBjS", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-01-14 08:16:18", last_sign_in_at: "2016-01-14 08:16:18", current_sign_in_ip: "::1", last_sign_in_ip: "::1", name: "Nick Hill", role: nil}
# ])
# Artist.create!([
#   {name: "Mal Webb", description: "Mal Webb is a singer, beatboxer, and multi-instrumentalist who has performed in various groups in the Australian music scene", image: "http://0.0.0.0:3000/assets/mal.jpg"},
#   {name: "Boothby Graffoe", description: "Boothby Graffoe, is an English comedian, singer, songwriter and playwright. He is particularly known for his surreal sense of humour and work with Canadian band Barenaked Ladies.", image: "http://0.0.0.0:3000/assets/boothby_graffoe.jpg"},
#   {name: "Don Paterson", description: "Don Paterson, OBE, FRSL is a Scottish poet, writer and musician.", image: "http://0.0.0.0:3000/assets/Don.jpg"},
#   {name: "Dave Allen", description: "Dave performs bluegrass, blues, country, folk, rock n roll, old-time, etc. He sings and plays guitar, banjo, fiddle, harmonica, piano and tap dances in an old-time flatfooting style often whilst playing an instrument and singing.", image: "http://0.0.0.0:3000/assets/stompin.jpg"},
#   {name: "Shady Character", description: "A shady being of indeterminate gender, who may not have your best interests at heart.", image: "http://0.0.0.0:3000/assets/shady.gif"},
#   {name: "Portknockie Over 70's Ladies Swimming Team", description: "They have forrgotten more about swimming than you will ever know", image: "http://0.0.0.0:3000/assets/oldswim.jpg"},
#   {name: "Franzl Lang", description: "Back from the grave, this master Jodlerkönig won't let death stop him from singing", image: "http://0.0.0.0:3000/assets/FranzlLang.jpg"},
#   {name: "Stimmhorn", description: "Stimmhorn is a Swiss band, playing experimental ethno-music, Imaginary Folklore. This band was formed in 1996 by Balthasar Streiff and Christian Zehnder.", image: "http://0.0.0.0:3000/assets/stimm.jpg"},
#   {name: "Flamenco Lady", description: "She teaches Flamenco", image: "http://0.0.0.0:3000/assets/flamenco_lady.jpg"},
#   {name: "Rick Henry", description: "7th Dan Black Belt and CSS Master", image: "http://0.0.0.0:3000/assets/rick.jpg"}
# ])
# Booking.create!([
#   {gig_id: 1, user_id: 1, ticket: 3},
#   {gig_id: 7, user_id: 1, ticket: 7},
#   {gig_id: 7, user_id: 3, ticket: 4},
#   {gig_id: 7, user_id: 2, ticket: 1},
#   {gig_id: 1, user_id: 3, ticket: 4},
#   {gig_id: 28, user_id: 3, ticket: 1},
#   {gig_id: 26, user_id: 4, ticket: 1},
#   {gig_id: 7, user_id: 3, ticket: 8}
# ])
# Genre.create!([
#   {name: "music"},
#   {name: "comedy"},
#   {name: "theatre"},
#   {name: "dance"},
#   {name: "film"},
#   {name: "poetry"},
#   {name: "other"}
# ])
# Gig.create!([
#   {name: "Mal Webb plays his hits", image: "http://0.0.0.0:3000/assets/dodgyeyebrow.gif", description: "Mal Webb performs a selection of songs from his albums.", venue_id: 1, artist_id: 1, genre_id: 1, start_time: "2016-05-01 12:00:00", end_time: "2016-05-01 13:00:00", capacity: 10},
#   {name: "Boothby Graffoe and The Following People", image: "http://0.0.0.0:3000/assets/boothby.jpg", description: "Boothby and Nick Pinn entertain you for 1 hour", venue_id: 2, artist_id: 2, genre_id: 2, start_time: "2016-06-01 19:30:00", end_time: "2016-06-01 20:30:00", capacity: 100},
#   {name: "Stompin' Dave Allen's Banjo Tap Dance Masterclass", image: "http://0.0.0.0:3000/assets/stompin_dave.jpg", description: "Stompin' Dave take us on wonderful journey using his banjo and tap dancing skills", venue_id: 2, artist_id: 5, genre_id: 1, start_time: "2016-04-20 15:00:00", end_time: "2016-04-20 16:00:00", capacity: 20},
#   {name: "Poetry Hour", image: "http://0.0.0.0:3000/assets/boring.jpg", description: "The longest hour of your life", venue_id: 1, artist_id: 3, genre_id: 6, start_time: "2016-01-25 12:00:00", end_time: "2016-01-25 13:00:00", capacity: 50},
#   {name: "Life changing experience", image: "http://0.0.0.0:3000/assets/question-mark.jpg", description: "Whether you enjoy it or not, you will rethink some basic principals about yourself.", venue_id: 5, artist_id: 6, genre_id: 7, start_time: "2016-05-01 23:30:00", end_time: "2016-05-01 23:45:00", capacity: 1},
#   {name: "Septuagenarian synchronised swimming", image: "http://0.0.0.0:3000/assets/swim.jpg", description: "Watch these graceful biddies perform their majestic routines very slowly.", venue_id: 9, artist_id: 7, genre_id: 1, start_time: "2016-07-23 13:30:00", end_time: "2016-07-23 15:30:00", capacity: 40},
#   {name: "Yodelling With Franz", image: "http://0.0.0.0:3000/assets/yodelling.jpg", description: "Let out your inner yodler with the YodelKing Franzl Lang leading the way.", venue_id: 6, artist_id: 8, genre_id: 1, start_time: "2016-05-10 10:00:00", end_time: "2016-05-10 12:00:00", capacity: 25},
#   {name: "Flügelfest", image: "http://0.0.0.0:3000/assets/stimmhorn.jpg", description: "Come listen to the haunting sounds of the Flügelhorn and other wondeerful Alpinr instruments.", venue_id: 6, artist_id: 9, genre_id: 1, start_time: "2016-05-10 12:00:00", end_time: "2016-05-10 13:00:00", capacity: 50},
#   {name: "Flamenco Extravaganza", image: "http://0.0.0.0:3000/assets/flamenco.jpg", description: "Experience the raw emotion of the traditional Flamenco music and dance in the wonderful atmosphere of La Cava.", venue_id: 7, artist_id: 10, genre_id: 4, start_time: "2016-08-14 19:00:00", end_time: "2016-08-14 21:00:00", capacity: 60},
#   {name: "Free Karate Lessons", image: "http://0.0.0.0:3000/assets/karate.jpg", description: "Totally legit free karate lessons with Karate Rick, in the back his van.", venue_id: 10, artist_id: 11, genre_id: 7, start_time: "2016-11-14 23:00:00", end_time: "2016-11-15 02:00:00", capacity: 1}
# ])
# Venue.create!([
#   {name: "Gilded Balloon", location: "Teviot", description: "Well known Fringe venue", image: "http://0.0.0.0:3000/assets/gilded.jpg"},
#   {name: "Assembly Rooms", location: "George St", description: "Fantastic venue in the center of Edinburgh.", image: "http://0.0.0.0:3000/assets/assembly.jpg"},
#   {name: "Stall 3", location: "Public Toilet", description: "Smells a bit, amusing grafiti", image: "http://0.0.0.0:3000/assets/stall.jpg"},
#   {name: "Alpine Lodge", location: "The Alps", description: "Made of Logs, covered in snow, filled with Ski folk", image: "http://0.0.0.0:3000/assets/lodge.jpg"},
#   {name: "La Cava", location: "Cadiz", description: "Taberna Flamenca “La Cava” is a flamenco club in Cadiz which offers customers two things: food and a show. It has a restaurant and a stage, and room for up to 60-70 people.  It looks like a traditional inn and the decor and furniture are typical of flamenco clubs.", image: "http://0.0.0.0:3000/assets/lacava.jpg"},
#   {name: "Nowhere", location: "Right in the middle", description: "Deserted wasteland, lots of room.", image: "http://0.0.0.0:3000/assets/nowhere.jpg"},
#   {name: "Swimming Pool", location: "Your local leisure centre", description: "It is a hole n the ground, filled with water.", image: "http://0.0.0.0:3000/assets/pool.jpg"},
#   {name: "Free Candy Van", location: "Always one step ahead of the police", description: "It looks legit. Everyone like free candy, right?", image: "http://0.0.0.0:3000/assets/freecandy.jpg"}
# ])
