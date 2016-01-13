# User.create!([
#   {email: "jay@email.com", encrypted_password: "$2a$10$V8IF3aqkDM62ch4EcmzkZ.T6okn74wO79FvTUm30.0tbU5apI1IVa", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 13, current_sign_in_at: "2016-01-12 17:52:57", last_sign_in_at: "2016-01-12 17:14:28", current_sign_in_ip: "::1", last_sign_in_ip: "::1", name: "Jay", role: "admin"},
#   {email: "rick@email.com", encrypted_password: "$2a$10$4vwQy246MQVnuxOhb6Wzbu1aJoe5WQ1B5MYqyEDDJa78qZ.DyyqIK", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-01-12 16:22:21", last_sign_in_at: "2016-01-12 16:22:21", current_sign_in_ip: "::1", last_sign_in_ip: "::1", name: "Rick", role: nil},
#   {email: "val@email.com", encrypted_password: "$2a$10$1EPteFRPdljDHGbSmTTg7ufyZ8FgjbbxKCMZ3bpm5QTiHrCegIgFu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 9, current_sign_in_at: "2016-01-12 17:21:08", last_sign_in_at: "2016-01-12 15:14:44", current_sign_in_ip: "::1", last_sign_in_ip: "::1", name: "Val", role: nil}
# ])
# Artist.create!([
#   {name: "Mal Webb", description: "Mal Webb is a singer, beatboxer, and multi-instrumentalist who has performed in various groups in the Australian music scene", image: "http://0.0.0.0:3000/assets/mal.jpg"},
#   {name: "Boothby Graffoe", description: "Boothby Graffoe, is an English comedian, singer, songwriter and playwright. He is particularly known for his surreal sense of humour and work with Canadian band Barenaked Ladies.", image: "http://0.0.0.0:3000/assets/boothby_graffoe.jpg"},
#   {name: "Don Paterson", description: "Don Paterson, OBE, FRSL is a Scottish poet, writer and musician.", image: "http://0.0.0.0:3000/assets/Don.jpg"}
# ])
# Booking.create!([
#   {gig_id: 1, user_id: 1, ticket: 3},
#   {gig_id: 7, user_id: 1, ticket: 7},
#   {gig_id: 7, user_id: 3, ticket: 4},
#   {gig_id: 7, user_id: 2, ticket: 1},
#   {gig_id: 1, user_id: 3, ticket: 4}
# ])
# Genre.create!([
#   {name: "music"},
#   {name: "comedy"},
#   {name: "theatre"},
#   {name: "dance"},
#   {name: "film"},
#   {name: "poetry"}
# ])
# Gig.create!([
#   {name: "Mal Webb plays his hits", image: "http://0.0.0.0:3000/assets/dodgyeyebrow.gif", description: "Mal Webb performs a selection of songs from his albums.", venue_id: 1, artist_id: 1, genre_id: 1, start_time: "2016-05-01 12:00:00", end_time: "2016-05-01 13:00:00", capacity: 10},
#   {name: "Boothby and Friends", image: "http://0.0.0.0:3000/assets/boothby.jpg", description: "Boothby and Nick Pinn entertain you for 1 hour", venue_id: 2, artist_id: 2, genre_id: 2, start_time: "2016-06-01 19:30:00", end_time: "2016-06-01 20:30:00", capacity: 100},
#   {name: "Stompin' Dave Allen's Banjo Tap Dance Masterclass", image: "http://0.0.0.0:3000/assets/stompin_dave.jpg", description: "Stompin' Dave take us on wonderful journey using his banjo and tap dancing skills", venue_id: 2, artist_id: 3, genre_id: 1, start_time: "2016-04-20 15:00:00", end_time: "2016-04-20 16:00:00", capacity: 20}
# ])
# Venue.create!([
#   {name: "Gilded Balloon", location: "Teviot", description: "Well known Fringe venue", image: "http://0.0.0.0:3000/assets/gilded.jpg"},
#   {name: "Assembly Rooms", location: "George St", description: "Fantastic venue in the center of Edinburgh.", image: "http://0.0.0.0:3000/assets/assembly.jpg"}
# ])
