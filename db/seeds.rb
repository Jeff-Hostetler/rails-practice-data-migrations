Person.delete_all
Organization.delete_all

30.times do |i|
  Person.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    date_of_birth: (i * 4).years.ago
  )
end

17.times do
  Organization.create!(
    name: ([Faker::Company.name] * 3 + [nil]).sample,
    active: [true, false, nil].sample,
  )
end

15.times do
  Organization.create!(
    name: ([Faker::Company.name] * 3 + [nil, "", " "]).sample,
    active: [true, false, nil].sample,
  )
end
