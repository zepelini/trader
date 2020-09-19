# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

5.times do |i|
    fake_password = Faker::String.random 
    Customer.create(
        name: Faker::Name.name, 
        email: Faker::Internet.email, 
        password: fake_password,
        password_confirmation: fake_password
    )
end