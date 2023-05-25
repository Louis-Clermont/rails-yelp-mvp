5.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    category: ['italian', 'japanese', 'chinese', 'french', 'belgian'].sample,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
  )
end
