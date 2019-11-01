# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
images = Dir["/Users/souzagab/gab/efenex/app/assets/images/car/*.jpg"].map{ |i| i.gsub('/Users/souzagab/gab/efenex/app/assets/images/','') }
NUM = [1,2,3,4,5]

BROKER = [
    {name:'Lorran', 
    avatar: 'team/lorran.jpg',
    }, 
    {name:'Lucas', 
    avatar:'team/lucas.jpg'},
    {name:'João',
    avatar:'team/joao.jpg'},
    {name:'Gabriel',
    avatar:"https://avatars1.githubusercontent.com/u/41161023?s=460&v=4"}]

BROKER.each do |broker| 
Broker.create(
    name: broker[:name],
    avatar: broker[:avatar],
    bg_img:"car/0#{NUM.sample}.jpg")
end
p "Brokers created"

100.times do
    @brand = Faker::Vehicle.make
    Vehicle.create(
        user: User.all.sample,
        brand: @brand,
        model: Faker::Vehicle.model(make_of_model: @brand),
        year: Faker::Vehicle.year,
        value: Faker::Number.number(digits: 6),
        img_url: images.sample
    )
  end
  30.times do
    User.create(
      email: Faker::Internet.email,
      password: 'test123'
    )
  end

  BROKER.each do |b| 
    User.create(
        email: "#{b[:name]}@mail.com",
        password: 'test123'
    )
  end
  
  Sale.create(user: User.all.sample, vehicle: nil, broker:Broker.all.sample)