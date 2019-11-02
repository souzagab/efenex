namespace :users do
  desc "TODO"
  task populate: :environment do
    10.times do
      User.create(
        email: Faker::Internet.email,
        password: 'test123'
      )
    end
  end
end
