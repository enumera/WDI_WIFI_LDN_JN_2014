# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

UserType.all.each {|x| x.destroy}
Group.all.each {|x| x.destroy}
VenueType.all.each {|x| x.destroy}
User.all.each {|x| x.destroy}
Wifi.all.each {|x| x.destroy}
Review.all.each {|x| x.destroy}

UserType.create(name: "Student")
UserType.create(name: "Business")
UserType.create(name: "Child")
UserType.create(name: "Public")


g1 = Group.create(name: "Public", group_type: "public")
g2 = Group.create(name: "Business", group_type: "public")
g3 = Group.create(name: "Student", group_type: "public")
g4 = Group.create(name: "Team", group_type: "private")
Group.create(name: "Sports Club", group_type: "private")
Group.create(name: "Playgroup", group_type: "private")
Group.create(name: "Home", group_type: "private")

VenueType.create(name: "Hotel")
VenueType.create(name: "Home")
VenueType.create(name: "Cafe")
VenueType.create(name: "Restaurant")
VenueType.create(name: "Bed & Breakfast")
VenueType.create(name: "Education Facility")

#----------- Gwen Data ---------

u15 = User.create(email: "mike_harris@email.com", password: "password", password_confirmation: "password", first: "Mike", last: "Harris", occupation: "TA")

u16 = User.create(email: "jarkyn_s@email.com", password: "password", password_confirmation: "password", first: "Jarkyn", last: "S", occupation: "TA")

u17 = User.create(email: "mathilda_thompson@email.com", password: "password", password_confirmation: "password", first: "Malthida", last: "Thompson")

u18 = User.create(email: "gerry_mathe@email.com", password: "password", password_confirmation: "password", first: "Gerry", last: "Mathe")

u19 = User.create(email: "michael_pavling@email.com", password: "password", password_confirmation: "password", first: "Michael", last: "Pavling")

u20 = User.create(email: "laura_hastings@email.com", password: "password", password_confirmation: "password", first: "Laura", last: "Hasting")

u21 = User.create(email: "andrew_fyfe@email.com", password: "password", password_confirmation: "password", first: "Andrew", last: "Fyfe")

u22 = User.create(email: "tom_walker@email.com", password: "password", password_confirmation: "password", first: "Tom", last: "Walker")

u23 = User.create(email: "gwen_au@email.com", password: "password", password_confirmation: "password", first: "Gwen", last: "Au")

u24 = User.create(email: "james_christie@email.com", password: "password", password_confirmation: "password", first: "James", last: "Christie")

u25 = User.create(email: "johanna_carlberg@email.com", password: "password", password_confirmation: "password", first: "Johanna", last: "Carlberg")

u26 = User.create(email: "tobias_hale@email.com", password: "password", password_confirmation: "password", first: "Tobias", last: "Hale")

u27 = User.create(email: "piers_karpinski@email.com", password: "password", password_confirmation: "password", first: "Piers", last: "Karpinski")

u28 = User.create(email: "david_rees@email.com", password: "password", password_confirmation: "password", first: "David", last: "Rees")

u29 = User.create(email: "alex_windett@email.com", password: "password", password_confirmation: "password", first: "Alex", last: "Windett")

u30 = User.create(email: "graham_curl@email.com", password: "password", password_confirmation: "password", first: "Graham", last: "Curl")


w25 = Wifi.create(name: "Regency Cafe - Guest", password: "5789nfniqjt&**^UYnbFUVJK", free_or_paid: true, share_scope: "public", business_name: "Regency Cafe", address_line_1: "17-19 Regency Street", city: "London", postcode: "SW1P 4BY", country: "UK", phone: "020 7821 6596", powerpoint: 2, number_of_seats: 30, reservation_possible: true, overall_rating: 3)
# Marker showing but no data here

w26 = Wifi.create(name: "The Harp - Welcome", password: "^UYnbFUVJK", free_or_paid: true, share_scope: "public", business_name: "The Harp", address_line_1: "47 Chandos Place", address_line_2: "Covent Garden", city: "London", postcode: "WC2N 4HS", country: "UK", phone: "020 7836 0291", powerpoint: 1, number_of_seats: 30, reservation_possible: true, overall_rating: 2)
# Marker showing but no data here

w27 = Wifi.create(name: "Gordon Ramsay Wifi", password: "GR^UYnbFUVJK", free_or_paid: true, share_scope: "private", business_name: "Gordon Ramsay", address_line_1: "Unit 68", address_line_2: "69 Royal Hospital Road", city: "London", postcode: "SW3 4HP", country: "UK", phone: "020 7352 4441", powerpoint: 4, number_of_seats: 50, reservation_possible: true, overall_rating: 4)

w28 = Wifi.create(name: "Barrafina Wifi", password: "barrafinapeople", free_or_paid: true, share_scope: "private", business_name: "Barrafina", address_line_1: "54 Frith Street", address_line_2: "Soho", city: "London", postcode: "W1D 4SL", country: "UK", phone: "020 7352 4441", powerpoint: 4, number_of_seats: 20, reservation_possible: true, overall_rating: 4)

w29 = Wifi.create(name: "Franco Manca Guest", password: "fmguest", free_or_paid: true, share_scope: "public", business_name: "Franco Manca", address_line_1: "4 Market Row", address_line_2: "Electric Lane", city: "London", postcode: "SW9 8LD", country: "UK", phone: "020 7738 3021", powerpoint: 5, number_of_seats: 30, reservation_possible: false, overall_rating: 4)

w30 = Wifi.create(name: "The Ledbury Guest", password: "lguest", free_or_paid: true, share_scope: "public", business_name: "The Ledbury", address_line_1: "127 Ledbury Road", address_line_2: "Notting Hill", city: "London", postcode: "W11 2AQ", country: "UK", phone: "020 7792 9090", powerpoint: 1, number_of_seats: 100, reservation_possible: true, overall_rating: 1)

w31 = Wifi.create(name: "Casa Don Carlos Public", password: "micasasucasa", free_or_paid: true, share_scope: "public", business_name: "Casa Don Carlos", address_line_1: "5 Union Street", city: "Brighton", postcode: "BN1 1HA", country: "UK", phone: "01273 327177", powerpoint: 4, number_of_seats: 35, reservation_possible: false, overall_rating: 2)

w32 = Wifi.create(name: "Sukhothai Public", password: "thaistyle", free_or_paid: true, share_scope: "public", business_name: "Sukhothai", address_line_1: "15 South Parade", city: "Leeds", postcode: "LS1 5QS", country: "UK", phone: "0113 242 2795", powerpoint: 3, number_of_seats: 35, reservation_possible: false, overall_rating: 2)

w33 = Wifi.create(name: "Gaucho Grill Public", password: "publicgg", free_or_paid: true, share_scope: "public", business_name: "Gaucho Grill", address_line_1: "2a St Marys Street", city: "Manchester", postcode: "M3 2LB", country: "UK", phone: "0161 833 4333", powerpoint: 5, number_of_seats: 50, reservation_possible: true, overall_rating: 4)

w34 = Wifi.create(name: "Field Guest", password: "fieldguest", free_or_paid: true, share_scope: "public", business_name: "Field", address_line_1: "2a St Marys Street", city: "Manchester", postcode: "M3 2LB", country: "UK", phone: "0161 833 4333", powerpoint: 3, number_of_seats: 35, reservation_possible: false, overall_rating: 2)

w35 = Wifi.create(name: "Banana Leaf private", password: "banana", free_or_paid: false, share_scope: "public", business_name: "Banana Leaf", address_line_1: "67 Cambridge Street", city: "Glasgow", postcode: "G3 6QX", country: "UK", phone: "0141 333 9994", powerpoint: 3, number_of_seats: 35, reservation_possible: true, overall_rating: 3)

w36 = Wifi.create(name: "GA-Guest", password: "schooldinner", free_or_paid: true, share_scope: "private", business_name: "General Assembly", address_line_1: "9 Backhill", city: "London", postcode: "EC1R 5EN", country: "UK", phone: "+1 (877) 348-5665", powerpoint: 4, number_of_seats: 25, reservation_possible: false, overall_rating: 5)

w37 = Wifi.create(name: "wby", password: "wh1t3b3aryd", free_or_paid: false, share_scope: "private", business_name: "Passion Capital", address_line_1: "2nd Floor, White Bear Yard", address_line_2: "144a Clerkenwell Road", city: "London", postcode: "EC1R 5DF", country: "UK", phone: "+44 207 833 3373", powerpoint: 2, number_of_seats: 20, reservation_possible: true, overall_rating: 3)

w38 = Wifi.create(name: "Gunmakers", password: "hirammaxim", free_or_paid: true, share_scope: "private", business_name: "The Gunmakers", address_line_1: "13 Eyre Street Hill", address_line_2: "Clerkenwell", city: "London", postcode: "EC1R 5ET", country: "UK", phone: "+44 207 833 3373", powerpoint: 1, number_of_seats: 70, reservation_possible: false, overall_rating: 3)

w39 = Wifi.create(name: "blvisitor", password: "blpassword", free_or_paid: true, share_scope: "public", business_name: "British Library", address_line_1: "96 Euston Rd", city: "London", postcode: "NW1 2DB", country: "UK", phone: "0843 208 1144", powerpoint: 5, number_of_seats: 300, reservation_possible: true, overall_rating: 4)

w40 = Wifi.create(name: "Crown guest", password: "crownguest", free_or_paid: true, share_scope: "public", business_name: "The Crown Tavern", address_line_1: "43 Clerkenwell Green", city: "London", postcode: "EC1R 0EG", country: "UK", phone: "020 7253 4973", powerpoint: 2, number_of_seats: 100, reservation_possible: true, overall_rating: 3)

g1.users << [u15, u16, u17, u18, u19, u20, u21, u22, u23]
g2.users << [u15, u16, u17, u18, u19, u20]
g3.users << [u21, u22, u23, u24, u25, u26, u27, u28, u29, u30]
g4.users << [u21, u22, u23]

r1 = Review.create(comment: "It's quiet until until this same guy starts snoring.")
r2 = Review.create(comment: "The place is great! I can have beer and be on Tindle at the same time!")
r3 = Review.create(comment: "It's great except for when installfest is on. You better be quick then")
r4 = Review.create(comment: "Well, I don't really know about the wifi but the beer and settings are good")
r5 = Review.create(comment: "Bitter, sweet, victory. I am quite pleased that I 'found' this place", overall_rating: 2)
r6 = Review.create(comment: "The wifi is pretty good, but there's no good Burrito or Hummous place nearby.")
r7 = Review.create(comment: "This place is nice, the  wifi works ok.")
r8 = Review.create(comment: "It's great Gerry isn't downoloading movies")
r9 = Review.create(comment: "It's ok until everyone works on CSS - that's a waste of time!")
r10 = Review.create(comment: "wby is great when we are outside and can longer get access to GA-Guest")
r11 = Review.create(comment: "As long the internet works, it's all good.")

r1.user = u22
r2.user = u26
r3.user = u23
r4.user = u27
r5.user = u28
r6.user = u29
r7.user = u25
r8.user = u24
r9.user = u30
r10.user = u22
r11.user = u21

r1.wifi = w39
r2.wifi = w38
r3.wifi = w36
r4.wifi = w40
r5.wifi = w39
r6.wifi = w39
r7.wifi = w39
r8.wifi = w36
r9.wifi = w36
r10.wifi = w37
r11.wifi = w36

w39.reviews << r1
w38.reviews << r2
w36.reviews << r3
w40.reviews << r4
w39.reviews << r5
w39.reviews << r6
w39.reviews << r7
w36.reviews << r8
w36.reviews << r9
w37.reviews << r10
w36.reviews << r11

g1.wifis << [w25, w26, w29, w30, w31, w32, w33, w34, w35, w39, w40]
g2.wifis << [w25, w26, w27, w28, w29, w30, w31, w32, w33, w34, w35, w36, w37]
g3.wifis << [w36, w37, w38, w39, w40]
g4.wifis << [w36, w37, w38, w39]