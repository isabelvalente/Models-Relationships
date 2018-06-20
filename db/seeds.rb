10.times do
  Customer.create(customer_name: Faker::FunnyName.two_word_name, customer_number: Faker::Number.number(5), existing_customer: Faker::Boolean.boolean)
end
