require 'faker'

puts 'cleaning up database'
Restaurant.destroy_all
puts 'database is clean'

5.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    category: %w[chinese italian japanese french belgian].sample
  )
end
