namespace :vehicles do
  desc "TODO"
  task populate: :environment do
    @images = Dir["app/assets/images/car/*.jpg"].map{ |i| i.gsub('app/assets/images/','') }
    30.times do
      @brand = Faker::Vehicle.make
      Vehicle.create(user: User.all.sample,brand: @brand,model: Faker::Vehicle.model(make_of_model: @brand),year: Faker::Vehicle.year,value: Faker::Number.number(digits: 6),img_url: @images.sample)
    end
  end

end
