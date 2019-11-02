namespace :vehicles do
  desc "Create Vehicles"
  task populate: :environment do
    @images = ["car/01.jpg", "car/03.jpg", "car/02.jpg", "car/06.jpg", "car/07.jpg", "car/05.jpg", "car/04.jpg", "car/09.jpg", "car/08.jpg"]
    15.times do
      @brand = Faker::Vehicle.make
      Vehicle.create(user: User.all.sample,brand: @brand,model: Faker::Vehicle.model(make_of_model: @brand),year: Faker::Vehicle.year,value: Faker::Number.number(digits: 6),img_url: @images.sample)
    end
  end

end
