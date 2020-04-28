# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#



require "open-uri"

Booking.destroy_all
Prop.destroy_all
User.destroy_all

# fake bouquet
puts "creating users"
Chatroom.create! name: 'general'
User.create(email: "maria@cool.com", password: "123456", nickname: "mariac")
User.create(email: "lucy@cool.com", password: "123456", nickname: "lucyc")

puts "creating props"
file = URI.open('https://res.cloudinary.com/dmwa29qvx/image/upload/v1581174946/fake_bouquet_q4rugt.jpg')
prop = Prop.new(name: 'Wedding Bouquet', description: "Beautiful wedding bouquet(fake) for hire", price: 15, availability: 'Now', location: "123 Kingsland Road, London", user: User.first)
prop.photos.attach(io: file, filename: 'fake_bouquet.jpg', content_type: 'image/jpg')
prop.save!

# fake flowers

file = URI.open('https://res.cloudinary.com/dmwa29qvx/image/upload/v1581174946/fake_table_flowers_kzcv1j.jpg')
prop = Prop.new(name: 'Wedding Flowers', description: "Beautiful wedding flowers for hire", price: 60, availability: 'Now', location: "1 Willow Lane, Mitcham", user: User.first )
prop.photos.attach(io: file, filename: 'fake_flowers.jpg', content_type: 'image/jpg')
prop.save!

# Wedding table


file = URI.open('https://res.cloudinary.com/dmwa29qvx/image/upload/v1581174946/wedding_table_xzwsx7.jpg')
prop = Prop.new(name: 'Wedding Table', description: "Stunning long wedding table for hire", price: 85, availability: 'Now', location: "31a, Bell St, Reigate", user: User.first )
prop.photos.attach(io: file, filename: 'wedding_table.jpg', content_type: 'image/jpg')
prop.save!


# Wedding Chairs

file = URI.open('https://res.cloudinary.com/dmwa29qvx/image/upload/v1581174946/wedding_chairs_kybntk.jpg')
prop = Prop.new(name: 'Wedding Chairs', description: "Sleek wedding chairs for hire", price: 75, availability: 'Now', location: "Higher Cholwell, Totnes", user: User.first )
prop.photos.attach(io: file, filename: 'wedding_chairs.jpg', content_type: 'image/jpg')
prop.save!

# Chair Covers

file = URI.open('https://res.cloudinary.com/dmwa29qvx/image/upload/v1581174946/chair_covers_hrzpkm.jpg')
prop = Prop.new(name: 'Gold Chair Covers', description: "Perfect addition to Wedding Chairs", price: 20, availability: 'Now', location: "150 Darkes Lane, Potters Bar", user: User.first )
prop.photos.attach(io: file, filename: 'chair_covers_hrzpkm.jpg', content_type: 'image/jpg')
prop.save!

# Mummy 1

file = URI.open('https://res.cloudinary.com/dmwa29qvx/image/upload/v1581174946/mummy_lg5owo.jpg')
prop = Prop.new(name: 'Large Egyptian Mummy Prop', description: "Perfect for any Egyptian themed event or party.", price: 150, availability: 'Now', location: "74 Lordship Lane, London", user: User.first )
prop.photos.attach(io: file, filename: 'fmummy_lg5owo.jpg', content_type: 'image/jpg')
prop.save!


# Mummy 2

file = URI.open('https://res.cloudinary.com/dmwa29qvx/image/upload/v1581174946/mummy2_wchwh9.jpg')
prop = Prop.new(name: 'Small Egyptian Mummy Prop', description: "Perfect for any Egyptian themed event or party.", price: 80, availability: 'Now', location: "74 Lordship Lane, London", user: User.first )
prop.photos.attach(io: file, filename: 'fmummy2_wchwh9.jpg', content_type: 'image/jpg')
prop.save!

# Statue 1

file = URI.open('https://res.cloudinary.com/dmwa29qvx/image/upload/v1581174946/egyptian_statue1_dot7pb.jpg')
prop = Prop.new(name: 'Large Hybrid statue', description: "Perfect for any grand event or party", price: 90, availability: 'Now', location: "69 St. Marychurch Street, London", user: User.first )
prop.photos.attach(io: file, filename: 'egyptian_statue1_dot7pb.jpg', content_type: 'image/jpg')
prop.save!

# Statue 2

file = URI.open('https://res.cloudinary.com/dmwa29qvx/image/upload/v1581174946/egyptian_statue2_gfullm.jpg')
prop = Prop.new(name: 'Small Hybrid statue', description: "Perfect for any grand event or party", price: 70, availability: 'Now', location: "67 Renfrew Rd, Ipswich", user: User.first )
prop.photos.attach(io: file, filename: 'fake_bouquet.jpg', content_type: 'image/jpg')
prop.save!

# Hollywood backdrop

file = URI.open('https://res.cloudinary.com/dsckp7mat/image/upload/v1587132170/3CVHUXnJMrX4FRN2hupWrksB.jpg')
prop = Prop.new(name: 'Hollywood Backdrop', description: "Add tinseltown to your party!", price: 65, availability: 'Now', location: "83 Upper St, London, N1 0NU", user: User.first )
prop.photos.attach(io: file, filename: '3CVHUXnJMrX4FRN2hupWrksB.jpg', content_type: 'image/jpg')
prop.save!

# Candyland backdrop

file = URI.open('https://res.cloudinary.com/dsckp7mat/image/upload/v1587132089/k3fsjgStZgHwVtaNzWmDDw9i.jpg')
prop = Prop.new(name: 'Candyland Backdrop', description: "Add Candyland to your child's party!", price: 65, availability: 'Now', location: "54 Islington Park St, London, N1 1PX", user: User.first )
prop.photos.attach(io: file, filename: 'k3fsjgStZgHwVtaNzWmDDw9i.jpg', content_type: 'image/jpg')
prop.save!

# Disco backdrop

file = URI.open('https://res.cloudinary.com/dsckp7mat/image/upload/v1587132015/oqWJq6HwwFvLjFAYbKY16u5W.jpg')
prop = Prop.new(name: 'Disco Backdrop', description: "Add Saturday Night Fever to your party!", price: 65, availability: 'Now', location: "60 Cross Street, London, N1 2BA", user: User.first )
prop.photos.attach(io: file, filename: 'oqWJq6HwwFvLjFAYbKY16u5W.jpg', content_type: 'image/jpg')
prop.save!



