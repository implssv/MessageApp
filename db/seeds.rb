# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do
  Category.create([{
                      name: Faker::Ancient.titan
                  }])
end

20.times do
  Message.create([{
                      title: Faker::Commerce.product_name,
                      description: Faker::Hacker.say_something_smart,
                      category_id: Faker::Base::rand_in_range(1, 10),
                      cover: Faker::Avatar.image,
                      user_id: 1

                  }])
end


30.times do
  Comment.create([{
                      content: Faker::Hacker.say_something_smart,
                      message_id: Faker::Base::rand_in_range(1, 20),
                      user_id: 1
                  }])
end
