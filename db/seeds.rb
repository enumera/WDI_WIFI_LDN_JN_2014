# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


UserType.create(name: "Student")
UserType.create(name: "Business")
UserType.create(name: "Housewife")
UserType.create(name: "Public")
UserType.create(name: "example 1")
UserType.create(name: "example 2")
UserType.create(name: "example 3")
UserType.create(name: "example 4")


g1 = Group.create(name: "Public")
g2 = Group.create(name: "Business")
g3 = Group.create(name: "Student")
g4 = Group.create(name: "example group")
Group.create(name: "example_group2")
Group.create(name: "example group3")
Group.create(name: "example group 4")
Group.create(name: "example_group 5")
Group.create(name: "example group6")

Group.create(name: "example_group7")
Group.create(name: "example group8")
Group.create(name: "example group 9")
Group.create(name: "example_group 10")
Group.create(name: "example group 11")


Group.create(name: "example group 12")
Group.create(name: "example_group 13")
Group.create(name: "example group14")
Group.create(name: "example group 15")
Group.create(name: "example_group 16")
Group.create(name: "example group 17")

Group.create(name: "example_group 18")
Group.create(name: "example group 19")
Group.create(name: "example group 20")
Group.create(name: "example_group 21")
Group.create(name: "example group 22")

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


Wifi.create(name: "Wifi name A1", password: "pass", free_or_paid: true, business_name: "Venue A", address_line_1: "1 LOOOOOOONNNG Street", address_line_2: "BIIIIIG town", city: "BIIIIIIIIG CITY", postcode: "E11 3DS", country: "Greate Britain", phone: "+00 44 1234 5678910")
Wifi.create(name: "Wifi name B1", password: "pass", free_or_paid: true, business_name: "Venue B", address_line_1: "1 any street", address_line_2: "Any town", city: "Any City", postcode: "EX11 3DS", country: "Greate Britain", phone: "+00 44 1234 5678910")

Wifi.create(name: "Wifi name C1", password: "pass", free_or_paid: true, business_name: "Biiig venue name B", address_line_1: "1102xx any street", address_line_2: "Any town", city: "Any City", postcode: "EX11 3DS", country: "Greate Britain", phone: "+00 44 1234 5678910")
Wifi.create(name: "Wifi name D1", password: "wimanlfuanfjflklkfkljfkf////", free_or_paid: true, business_name: "BiiiIIIIIIIg venue name B", address_line_1: "1102xx any street", address_line_2: "Any town", city: "Any City", postcode: "EX11 3DS", country: "BIIIIIGGGG COOUNTRY", phone: "+00 44 1234 56789100000")

Wifi.create(name: "Wifi name E1", password: "5789nfniqjt&**^UYnbFUVJK", free_or_paid: true, business_name: "BiiiIIIIIIIg venue name B", address_line_1: "1102xx any street", address_line_2: "Any town", city: "Any City", postcode: "EX11 3DS", country: "BIIIIIGGGG COOUNTRY", phone: "+00 44 1234 56789100000")
Wifi.create(name: "homeakllfja", password: "5789nfniqjt&**^UYnbFUVJK", free_or_paid: true, business_name: "BiiiIIIIIIIg venue name B", address_line_1: "1102xx any street", address_line_2: "Any town", city: "Any City", postcode: "EX11 3DS", country: "BIIIIIGGGG COOUNTRY", phone: "+00 44 1234 56789100000")
Wifi.create(name: "Wifi name A2", password: "pass", free_or_paid: true, business_name: "Venue A", address_line_1: "1 LOOOOOOONNNG Street", address_line_2: "BIIIIIG town", city: "BIIIIIIIIG CITY", postcode: "E11 3DS", country: "Greate Britain", phone: "+00 44 1234 5678910")
Wifi.create(name: "Wifi name B2", password: "pass", free_or_paid: true, business_name: "Venue B", address_line_1: "1 any street", address_line_2: "Any town", city: "Any City", postcode: "EX11 3DS", country: "Greate Britain", phone: "+00 44 1234 5678910")

Wifi.create(name: "Wifi name C2", password: "pass", free_or_paid: true, business_name: "Biiig venue name B", address_line_1: "1102xx any street", address_line_2: "Any town", city: "Any City", postcode: "EX11 3DS", country: "Greate Britain", phone: "+00 44 1234 5678910")
Wifi.create(name: "Wifi name D2", password: "wimanlfuanfjflklkfkljfkf////", free_or_paid: true, business_name: "BiiiIIIIIIIg venue name B", address_line_1: "1102xx any street", address_line_2: "Any town", city: "Any City", postcode: "EX11 3DS", country: "BIIIIIGGGG COOUNTRY", phone: "+00 44 1234 56789100000")

Wifi.create(name: "Wifi name E2", password: "5789nfniqjt&**^UYnbFUVJK", free_or_paid: true, business_name: "BiiiIIIIIIIg venue name B", address_line_1: "1102xx any street", address_line_2: "Any town", city: "Any City", postcode: "EX11 3DS", country: "BIIIIIGGGG COOUNTRY", phone: "+00 44 1234 56789100000")
Wifi.create(name: "homeakllfja", password: "5789nfniqjt&**^UYnbFUVJK", free_or_paid: true, business_name: "BiiiIIIIIIIg venue name B", address_line_1: "1102xx any street", address_line_2: "Any town", city: "Any City", postcode: "EX11 3DS", country: "BIIIIIGGGG COOUNTRY", phone: "+00 44 1234 56789100000")

Wifi.create(name: "Wifi name A1", password: "pass", free_or_paid: true, business_name: "Venue A", address_line_1: "1 LOOOOOOONNNG Street", address_line_2: "BIIIIIG town", city: "BIIIIIIIIG CITY", postcode: "E11 3DS", country: "Greate Britain", phone: "+00 44 1234 5678910")
Wifi.create(name: "Wifi name B1", password: "pass", free_or_paid: true, business_name: "Venue B", address_line_1: "1 any street", address_line_2: "Any town", city: "Any City", postcode: "EX11 3DS", country: "Greate Britain", phone: "+00 44 1234 5678910")

Wifi.create(name: "Wifi name C1", password: "pass", free_or_paid: true, business_name: "Biiig venue name B", address_line_1: "1102xx any street", address_line_2: "Any town", city: "Any City", postcode: "EX11 3DS", country: "Greate Britain", phone: "+00 44 1234 5678910")
Wifi.create(name: "Wifi name D1", password: "wimanlfuanfjflklkfkljfkf////", free_or_paid: true, business_name: "BiiiIIIIIIIg venue name B", address_line_1: "1102xx any street", address_line_2: "Any town", city: "Any City", postcode: "EX11 3DS", country: "BIIIIIGGGG COOUNTRY", phone: "+00 44 1234 56789100000")

Wifi.create(name: "Wifi name E1", password: "5789nfniqjt&**^UYnbFUVJK", free_or_paid: true, business_name: "BiiiIIIIIIIg venue name B", address_line_1: "1102xx any street", address_line_2: "Any town", city: "Any City", postcode: "EX11 3DS", country: "BIIIIIGGGG COOUNTRY", phone: "+00 44 1234 56789100000")
Wifi.create(name: "homeakllfja", password: "5789nfniqjt&**^UYnbFUVJK", free_or_paid: true, business_name: "BiiiIIIIIIIg venue name B", address_line_1: "1102xx any street", address_line_2: "Any town", city: "Any City", postcode: "EX11 3DS", country: "BIIIIIGGGG COOUNTRY", phone: "+00 44 1234 56789100000")
Wifi.create(name: "Wifi name A2", password: "pass", free_or_paid: true, business_name: "Venue A", address_line_1: "1 LOOOOOOONNNG Street", address_line_2: "BIIIIIG town", city: "BIIIIIIIIG CITY", postcode: "E11 3DS", country: "Greate Britain", phone: "+00 44 1234 5678910")
Wifi.create(name: "Wifi name B2", password: "pass", free_or_paid: true, business_name: "Venue B", address_line_1: "1 any street", address_line_2: "Any town", city: "Any City", postcode: "EX11 3DS", country: "Greate Britain", phone: "+00 44 1234 5678910")

Wifi.create(name: "Wifi name C2", password: "pass", free_or_paid: true, business_name: "Biiig venue name B", address_line_1: "1102xx any street", address_line_2: "Any town", city: "Any City", postcode: "EX11 3DS", country: "Greate Britain", phone: "+00 44 1234 5678910")
Wifi.create(name: "Wifi name D2", password: "wimanlfuanfjflklkfkljfkf////", free_or_paid: true, business_name: "BiiiIIIIIIIg venue name B", address_line_1: "1102xx any street", address_line_2: "Any town", city: "Any City", postcode: "EX11 3DS", country: "BIIIIIGGGG COOUNTRY", phone: "+00 44 1234 56789100000")

Wifi.create(name: "Wifi name E2", password: "5789nfniqjt&**^UYnbFUVJK", free_or_paid: true, business_name: "BiiiIIIIIIIg venue name B", address_line_1: "1102xx any street", address_line_2: "Any town", city: "Any City", postcode: "EX11 3DS", country: "BIIIIIGGGG COOUNTRY", phone: "+00 44 1234 56789100000")
Wifi.create(name: "homeakllfja", password: "5789nfniqjt&**^UYnbFUVJK", free_or_paid: true, business_name: "BiiiIIIIIIIg venue name B", address_line_1: "1102xx any street", address_line_2: "Any town", city: "Any City", postcode: "EX11 3DS", country: "BIIIIIGGGG COOUNTRY", phone: "+00 44 1234 56789100000")



g1.users << [u1, u2, u3, u4, u5, u6, u7, u8, u9, u10, u11, u12, u13, u14]
g2.users << [u1, u14, u11]
g3.users << [u2, u3, u4, u11, u13]
g4.users << [u5, u6 ,u7, u2]






