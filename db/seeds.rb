# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require "open-uri"


# fake bouquet
puts "creating users"
User.create(email: "maria@cool.com", password: 123456)
User.create(email: "lucy@cool.com", password: 123456)

puts "creating props"
file = URI.open('https://res.cloudinary.com/dmwa29qvx/image/upload/v1581174946/fake_bouquet_q4rugt.jpg')
prop = Prop.new(name: 'Wedding Bouquet', description: "Beautiful wedding bouquet(fake) for hire", price: 15, availability: 'Now', location: "123 Kingsland road", user: User.first)
prop.photos.attach(io: file, filename: 'fake_bouquet.jpg', content_type: 'image/jpg')
prop.save!

# fake flowers

file = URI.open('https://res.cloudinary.com/dmwa29qvx/image/upload/v1581174946/fake_table_flowers_kzcv1j.jpg')
prop = Prop.new(name: 'Wedding Flowers', description: "Beautiful wedding flowers for hire", price: 60, availability: 'Now', location: "123 Kingsland road", user: User.first )
prop.photos.attach(io: file, filename: 'fake_flowers.jpg', content_type: 'image/jpg')
prop.save!

# Wedding table

file = URI.open('https://res.cloudinary.com/dmwa29qvx/image/upload/v1581174946/wedding_table_xzwsx7.jpg')
prop = Prop.new(name: 'Wedding Table', description: "Beautiful long wedding table for hire", price: 85, availability: 'Now', location: "123 Kingsland road", user: User.first )
prop.photos.attach(io: file, filename: 'wedding_table.jpg', content_type: 'image/jpg')
prop.save!

# Wedding chairs


file = URI.open('https://res.cloudinary.com/dmwa29qvx/image/upload/v1581174946/wedding_chairs_kybntk.jpg')
prop = Prop.new(name: 'Wedding Bouquet', description: "Beautiful wedding bouquet(fake) for hire", price: 75, availability: 'Now', location: "123 Kingsland road", user: User.first )
prop.photos.attach(io: file, filename: 'wedding_chairs.jpg', content_type: 'image/jpg')
prop.save!

# Chair covers

file = URI.open('https://res.cloudinary.com/dmwa29qvx/image/upload/v1581174946/chair_covers_hrzpkm.jpg')
prop = Prop.new(name: 'Wedding Bouquet', description: "Beautiful wedding bouquet(fake) for hire", price: 20, availability: 'Now', location: "123 Kingsland road", user: User.first )
prop.photos.attach(io: file, filename: 'chair_covers_hrzpkm.jpg', content_type: 'image/jpg')
prop.save!

# Hanging ghost

file = URI.open('https://res.cloudinary.com/dmwa29qvx/image/upload/v1581174946/hanging_ghost_lpuf7e.jpg')
prop = Prop.new(name: 'Wedding Bouquet', description: "Beautiful wedding bouquet(fake) for hire", price: 30, availability: 'Now', location: "123 Kingsland road", user: User.first )
prop.photos.attach(io: file, filename: 'hanging_ghost_lpuf7e.jpg', content_type: 'image/jpg')
prop.save!

# Mummy 1

file = URI.open('https://res.cloudinary.com/dmwa29qvx/image/upload/v1581174946/mummy_lg5owo.jpg')
prop = Prop.new(name: 'Large Tutankhamun Egyptian Mummy Prop', description: "Large Tutankhamun Egyptian Mummy Prop to hire. Perfect for any Egyptian themed event or party.", price: 150, availability: 'Now', location: "123 Kingsland road", user: User.first )
prop.photos.attach(io: file, filename: 'fmummy_lg5owo.jpg', content_type: 'image/jpg')
prop.save!

# Mummy 2

file = URI.open('https://res.cloudinary.com/dmwa29qvx/image/upload/v1581174946/mummy2_wchwh9.jpg')
prop = Prop.new(name: 'Wedding Bouquet', description: "Beautiful wedding bouquet(fake) for hire", price: 30, availability: 'Now', location: "123 Kingsland road", user: User.first )
prop.photos.attach(io: file, filename: 'fmummy2_wchwh9.jpg', content_type: 'image/jpg')
prop.save!

# Statue 1

file = URI.open('https://res.cloudinary.com/dmwa29qvx/image/upload/v1581174946/egyptian_statue1_dot7pb.jpg')
prop = Prop.new(name: 'Wedding Bouquet', description: "Beautiful wedding bouquet(fake) for hire", price: 20, availability: 'Now', location: "123 Kingsland road", user: User.first )
prop.photos.attach(io: file, filename: 'egyptian_statue1_dot7pb.jpg', content_type: 'image/jpg')
prop.save!

# Statue 2

file = URI.open('https://res.cloudinary.com/dmwa29qvx/image/upload/v1581174946/egyptian_statue2_gfullm.jpg')
prop = Prop.new(name: 'Wedding Bouquet', description: "Beautiful wedding bouquet(fake) for hire", price: 20, availability: 'Now', location: "123 Kingsland road", user: User.first )
prop.photos.attach(io: file, filename: 'fake_bouquet.jpg', content_type: 'image/jpg')
prop.save!


