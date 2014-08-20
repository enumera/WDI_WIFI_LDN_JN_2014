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
UserType.create(name: "Housewife")
UserType.create(name: "Public")
UserType.create(name: "example 1")
UserType.create(name: "example 2")
UserType.create(name: "example 3")
UserType.create(name: "example 4")


g1 = Group.create(name: "Public", group_type: "public")
g2 = Group.create(name: "Business", group_type: "public")
g3 = Group.create(name: "Student", group_type: "public")
g4 = Group.create(name: "example group", group_type: "private")
Group.create(name: "example_group2", group_type: "private")
Group.create(name: "example group3", group_type: "private")
Group.create(name: "example group 4", group_type: "private")
Group.create(name: "example_group 5", group_type: "private")
Group.create(name: "example group6", group_type: "private")

Group.create(name: "example_group7", group_type: "private")
Group.create(name: "example group8", group_type: "private")
Group.create(name: "example group 9", group_type: "private")
Group.create(name: "example_group 10", group_type: "private")
Group.create(name: "example group 11", group_type: "private")


Group.create(name: "example group 12", group_type: "private")
Group.create(name: "example_group 13", group_type: "private")
Group.create(name: "example group14", group_type: "private")
Group.create(name: "example group 15", group_type: "private")
Group.create(name: "example_group 16", group_type: "private")
Group.create(name: "example group 17", group_type: "private")

Group.create(name: "example_group 18", group_type: "private")
Group.create(name: "example group 19", group_type: "private")
Group.create(name: "example group 20", group_type: "private")
Group.create(name: "example_group 21", group_type: "private")
Group.create(name: "example group 22", group_type: "private")

VenueType.create(name: "Hotel")
VenueType.create(name: "Home")
VenueType.create(name: "Cafe")
VenueType.create(name: "Restaurant")
VenueType.create(name: "Biiiignammmmme")
VenueType.create(name: "smname")
VenueType.create(name: "example 1")
VenueType.create(name: "example 2")

VenueType.create(name: "example 3")
VenueType.create(name: "example 2")

u1 = User.create(email: "user1@email.com", password: "password", password_confirmation: "password", first: "Andrew", last: "Fyfe")
u2 = User.create(email: "user2@email.com", password: "password", password_confirmation: "password", first: "Gwen", last: "Au")
u3 = User.create(email: "user3@email.com", password: "password", password_confirmation: "password", first: "Tom", last: "Walker")
u4 = User.create(email: "user4@email.com", password: "password", password_confirmation: "password", first: "BIIIIGGGGgggg", last: "Nammmmekkkemee")
u5 = User.create(email: "user5@email.com", password: "password", password_confirmation: "password", first: "sma", last: "aa")
u6 = User.create(email: "user6@email.com", password: "password", password_confirmation: "password")
u7 = User.create(email: "user7@email.com", password: "password", password_confirmation: "password")

u8 = User.create(email: "user8@email.com", password: "password", password_confirmation: "password")
u9 = User.create(email: "user9@email.com", password: "password", password_confirmation: "password")
u10 =User.create(email: "user10@email.com", password: "password", password_confirmation: "password")
u11 = User.create(email: "user11@email.com", password: "password", password_confirmation: "password")
u12 = User.create(email: "user12@email.com", password: "password", password_confirmation: "password")
u13 = User.create(email: "user13@email.com", password: "password", password_confirmation: "password")
u14 = User.create(email: "user14@email.com", password: "password", password_confirmation: "password")

w1 = Wifi.create(name: "Wifi name A1", password: "pass", free_or_paid: true, business_name: "Venue A", address_line_1: "1 LOOOOOOONNNG Street", address_line_2: "BIIIIIG town", city: "BIIIIIIIIG CITY", postcode: "E11 3DS", country: "Greate Britain", phone: "+00 44 1234 5678910", share_scope: "public")
w2 = Wifi.create(name: "Wifi name B1", password: "pass", free_or_paid: true, business_name: "Venue B", address_line_1: "1 any street", address_line_2: "Any town", city: "Any City", postcode: "SW11 4EG", country: "Greate Britain", phone: "+00 44 1234 5678910", share_scope: "private")

w3 = Wifi.create(name: "Wifi name C1", password: "pass", free_or_paid: true, business_name: "Biiig venue name B", address_line_1: "1102xx any street", address_line_2: "Any town", city: "Any City", postcode: "NW1 0LE", country: "Greate Britain", phone: "+00 44 1234 5678910", share_scope: "public")
w4 = Wifi.create(name: "Wifi name D1", password: "wimanlfuanfjflklkfkljfkf////", free_or_paid: true, business_name: "BiiiIIIIIIIg venue name B", address_line_1: "1102xx any street", address_line_2: "Any town", city: "Any City", postcode: "NW6 7AY", country: "BIIIIIGGGG COOUNTRY", phone: "+00 44 1234 56789100000", share_scope: "private")

w5 = Wifi.create(name: "Wifi name E1", password: "5789nfniqjt&**^UYnbFUVJK", free_or_paid: true, business_name: "BiiiIIIIIIIg venue name B", address_line_1: "1102xx any street", address_line_2: "Any town", city: "Any City", postcode: "SW6 2TQ", country: "BIIIIIGGGG COOUNTRY", phone: "+00 44 1234 56789100000", share_scope: "public")
w6 = Wifi.create(name: "homeakllfja", password: "5789nfniqjt&**^UYnbFUVJK", free_or_paid: true, business_name: "BiiiIIIIIIIg venue name B", address_line_1: "1102xx any street", address_line_2: "Any town", city: "Any City", postcode: "E14 4DS", country: "BIIIIIGGGG COOUNTRY", phone: "+00 44 1234 56789100000", share_scope: "public")
w7 = Wifi.create(name: "Wifi name A2", password: "pass", free_or_paid: true, business_name: "Venue A", address_line_1: "1 LOOOOOOONNNG Street", address_line_2: "BIIIIIG town", city: "BIIIIIIIIG CITY", postcode: "NW6 1PB", country: "Greate Britain", phone: "+00 44 1234 5678910", share_scope: "private")
w8 = Wifi.create(name: "Wifi name B2", password: "pass", free_or_paid: true, business_name: "Venue B", address_line_1: "1 any street", address_line_2: "Any town", city: "Any City", postcode: "E11 4DS", country: "Greate Britain", phone: "+00 44 1234 5678910", share_scope: "public")

w9 = Wifi.create(name: "Wifi name C2", password: "pass", free_or_paid: true, business_name: "Biiig venue name B", address_line_1: "1102xx any street", address_line_2: "Any town", city: "Any City", postcode: "E11 5DS", country: "Greate Britain", phone: "+00 44 1234 5678910", share_scope: "public")
w10 = Wifi.create(name: "Wifi name D2", password: "wimanlfuanfjflklkfkljfkf////", free_or_paid: true, business_name: "BiiiIIIIIIIg venue name B", address_line_1: "1102xx any street", address_line_2: "Any town", city: "Any City", postcode: "G60 5JU", country: "BIIIIIGGGG COOUNTRY", phone: "+00 44 1234 56789100000", share_scope: "public")

w11 = Wifi.create(name: "Wifi name E2", password: "5789nfniqjt&**^UYnbFUVJK", free_or_paid: true, business_name: "BiiiIIIIIIIg venue name B", address_line_1: "1102xx any street", address_line_2: "Any town", city: "Any City", postcode: "EX11 3DS", country: "BIIIIIGGGG COOUNTRY", phone: "+00 44 1234 56789100000", share_scope: "public")
w12 = Wifi.create(name: "homeakllfja", password: "5789nfniqjt&**^UYnbFUVJK", free_or_paid: true, business_name: "BiiiIIIIIIIg venue name B", address_line_1: "1102xx any street", address_line_2: "Any town", city: "Any City", postcode: "E11 3DS", country: "BIIIIIGGGG COOUNTRY", phone: "+00 44 1234 56789100000", share_scope: "private")

w13 = Wifi.create(name: "Wifi name A1", password: "pass", free_or_paid: true, business_name: "Venue A", address_line_1: "1 LOOOOOOONNNG Street", address_line_2: "BIIIIIG town", city: "BIIIIIIIIG CITY", postcode: "E11 3DS", country: "Greate Britain", phone: "+00 44 1234 5678910", share_scope: "public")
w14 = Wifi.create(name: "Wifi name B1", password: "pass", free_or_paid: true, business_name: "Venue B", address_line_1: "1 any street", address_line_2: "Any town", city: "Any City", postcode: "E11 3DS", country: "Greate Britain", phone: "+00 44 1234 5678910", share_scope: "public")

w15 = Wifi.create(name: "Wifi name C1", password: "pass", free_or_paid: true, business_name: "Biiig venue name B", address_line_1: "1102xx any street", address_line_2: "Any town", city: "Any City", postcode: "E11 3DS", country: "Greate Britain", phone: "+00 44 1234 5678910", share_scope: "public")
w16 = Wifi.create(name: "Wifi name D1", password: "wimanlfuanfjflklkfkljfkf////", free_or_paid: true, business_name: "BiiiIIIIIIIg venue name B", address_line_1: "1102xx any street", address_line_2: "Any town", city: "Any City", postcode: "E11 3DS", country: "BIIIIIGGGG COOUNTRY", phone: "+00 44 1234 56789100000", share_scope: "public")

w17 = Wifi.create(name: "Wifi name E1", password: "5789nfniqjt&**^UYnbFUVJK", free_or_paid: true, business_name: "BiiiIIIIIIIg venue name B", address_line_1: "1102xx any street", address_line_2: "Any town", city: "Any City", postcode: "E11 3DS", country: "BIIIIIGGGG COOUNTRY", phone: "+00 44 1234 56789100000", share_scope: "private")
w18 = Wifi.create(name: "homeakllfja", password: "5789nfniqjt&**^UYnbFUVJK", free_or_paid: true, business_name: "BiiiIIIIIIIg venue name B", address_line_1: "1102xx any street", address_line_2: "Any town", city: "Any City", postcode: "E11 3DS", country: "BIIIIIGGGG COOUNTRY", phone: "+00 44 1234 56789100000", share_scope: "public")
w19 = Wifi.create(name: "Wifi name A2", password: "pass", free_or_paid: true, business_name: "Venue A", address_line_1: "1 LOOOOOOONNNG Street", address_line_2: "BIIIIIG town", city: "BIIIIIIIIG CITY", postcode: "E11 3DS", country: "Greate Britain", phone: "+00 44 1234 5678910", share_scope: "public")
w20 = Wifi.create(name: "Wifi name B2", password: "pass", free_or_paid: true, business_name: "Venue B", address_line_1: "1 any street", address_line_2: "Any town", city: "Any City", postcode: "E11 3DS", country: "Greate Britain", phone: "+00 44 1234 5678910", share_scope: "private")

w21 = Wifi.create(name: "Wifi name C2", password: "pass", free_or_paid: true, business_name: "Biiig venue name B", address_line_1: "1102xx any street", address_line_2: "Any town", city: "Any City", postcode: "E11 3DS", country: "Greate Britain", phone: "+00 44 1234 5678910", share_scope: "public")
w22 = Wifi.create(name: "Wifi name D2", password: "wimanlfuanfjflklkfkljfkf////", free_or_paid: true, business_name: "BiiiIIIIIIIg venue name B", address_line_1: "1102xx any street", address_line_2: "Any town", city: "Any City", postcode: "E11 3DS", country: "BIIIIIGGGG COOUNTRY", phone: "+00 44 1234 56789100000", share_scope: "public")

w23 = Wifi.create(name: "Wifi name E2", password: "5789nfniqjt&**^UYnbFUVJK", free_or_paid: true, business_name: "BiiiIIIIIIIg venue name B", address_line_1: "1102xx any street", address_line_2: "Any town", city: "Any City", postcode: "E11 3DS", country: "BIIIIIGGGG COOUNTRY", phone: "+00 44 1234 56789100000", share_scope: "private")
w24 = Wifi.create(name: "homeakllfja", password: "5789nfniqjt&**^UYnbFUVJK", free_or_paid: true, business_name: "BiiiIIIIIIIg venue name B", address_line_1: "1102xx any street", address_line_2: "Any town", city: "Any City", postcode: "E11 3DS", country: "BIIIIIGGGG COOUNTRY", phone: "+00 44 1234 56789100000", share_scope: "public")



g1.users << [u1, u2, u3, u4, u5, u6, u7, u8, u9, u10, u11, u12, u13, u14]
g2.users << [u1, u14, u11]
g3.users << [u2, u3, u4, u11, u13]
g4.users << [u5, u6 ,u7, u2]

r1 = Review.create(comment: "This place is, great1", overall_rating: 5)
r2 = Review.create(comment: "This place is great2", overall_rating: 4)
r3 = Review.create(comment: "This place is greeeeeaaaaaaaaaaaAAAat", overall_rating: 5)
r4 = Review.create(comment: "This place is bad", overall_rating: 3)
r5 = Review.create(comment: "This place is wonderful. I so pleased I found it", overall_rating: 2)
r6 = Review.create(comment: "This place is supercool.this is a long commment, commentcomementfjklajfljasljfljlfjljlajflajljklj
  lasjlkfjsajkllksfjlkjlfkajlkfjlksafjlksl", overall_rating: 5)
r7 = Review.create(comment: "This place is great7", overall_rating: 5)
r8 = Review.create(comment: "This place is great8", overall_rating: 5)
r9 = Review.create(comment: "This place is great9", overall_rating: 1)
r10 = Review.create(comment: "This place is great10", overall_rating: 5)
r11 = Review.create(comment: "This place is great11", overall_rating: 3)
r12 = Review.create(comment: "This place is great12", overall_rating: 5)
r13 = Review.create(comment: "This place is great13", overall_rating: 4)
r14 = Review.create(comment: "This place is great14", overall_rating: 1)
r15 = Review.create(comment: "This place is great15", overall_rating: 2)
r16 = Review.create(comment: "This place is great16", overall_rating: 4)

r1.user = u1
r2.user = u1
r3.user = u2
r4.user = u3
r5.user = u14
r6.user = u9
r7.user = u10
r8.user = u11
r9.user = u12
r10.user = u1
r11.user = u5
r12.user = u7
r13.user = u8
r14.user = u9
r15.user = u10
r16.user = u11

r1.wifi = w1
r2.wifi = w1
r3.wifi = w2
r4.wifi = w3
r5.wifi = w14
r6.wifi = w9
r7.wifi = w10
r8.wifi = w11
r9.wifi = w12
r10.wifi = w1
r11.wifi = w5
r12.wifi = w7
r13.wifi = w8
r14.wifi = w9
r15.wifi = w10
r16.wifi = w11

w1.reviews << r1
w1.reviews << r2
w1.reviews << r3
w1.reviews << r4
w1.reviews << r5
w1.reviews << r6

w2.reviews << r7
w2.reviews << r8
w2.reviews << r9
w2.reviews << r10
w3.reviews << r11
w3.reviews << r12
w3.reviews << r13
w3.reviews << r14
w3.reviews << r15









