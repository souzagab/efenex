namespace :brokers do
  desc "Create Brokers"
  task populate: :environment do
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
      
  end

end
