# Seed services
common_services = [
    { name: "Cleaning", description: "Professional house cleaning services.", picture: "https://plus.unsplash.com/premium_photo-1677683508374-a6f50382eb66?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" },
    { name: "Cooking", description: "Cooking and preparation of food.", picture: "https://images.unsplash.com/photo-1556911261-6bd341186b2f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" },
    { name: "Lawn Care", description: "Lawn mowing and maintenance.", picture: "https://images.unsplash.com/photo-1558904541-efa843a96f01?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" },
    { name: "Plumbing Repairs", description: "Fixing plumbing issues and leaks.", picture: "https://images.unsplash.com/photo-1601997123254-a9f1ad6a756b?q=80&w=1778&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" },
    { name: "Pet Sitting", description: "Professional pet sitting and dog walking.", picture: "https://images.unsplash.com/photo-1576511934945-2859ac59d8bc?q=80&w=2073&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" },
    { name: "Tutoring Services", description: "Educational tutoring for various subjects.", picture: "https://images.unsplash.com/photo-1543269865-0a740d43b90c?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" },
    { name: "Interior Painting", description: "Interior painting and color consultation.", picture: "https://plus.unsplash.com/premium_photo-1661288513190-2a3fee4fdadf?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" },
  ]
  
puts "Seeding services..."
common_services.each do |service|
    Service.create(service)
end
puts "Services seeded!"

# Seed User
puts "Seeding user..."
User.create!(email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8))
puts "User seeded!"

# Seed Taskers
profile_picture_urls = [
  "https://images.unsplash.com/photo-1578979879663-4ba6a968a50a?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8YmVhdXRpZnVsJTIwZ2lybHN8ZW58MHx8MHx8fDA%3D",
  "https://images.unsplash.com/photo-1575439462433-8e1969065df7?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8YmVhdXRpZnVsJTIwZ2lybHN8ZW58MHx8MHx8fDA%3D",
  "https://images.unsplash.com/photo-1541257710737-06d667133a53?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGJlYXV0aWZ1bCUyMGdpcmxzfGVufDB8fDB8fHww",
  "https://images.unsplash.com/photo-1440589473619-3cde28941638?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGJlYXV0aWZ1bCUyMGdpcmxzfGVufDB8fDB8fHww",
  "https://images.unsplash.com/photo-1552954277-0c45bd503b54?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YmVhdXRpZnVsJTIwZ2lybHN8ZW58MHx8MHx8fDA%3D",
  "https://images.unsplash.com/photo-1610932146070-28464a974a7f?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8YmVhdXRpZnVsJTIwZ2lybHN8ZW58MHx8MHx8fDA%3D",
  "https://images.unsplash.com/photo-1574701148212-8518049c7b2c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhdXRpZnVsJTIwZ2lybHN8ZW58MHx8MHx8fDA%3D"
]

puts "Seeding taskers..."
profile_picture_urls.each_with_index do |url, index|
  tasker = Tasker.create!(
    user_id: "1",
    name: Faker::Name.unique.name,
    location: Faker::Address.unique.city,
    profile_picture: url,
    description: Faker::Lorem.paragraph(sentence_count: 3),
    phone_number: "07#{Faker::Number.unique.number(digits: 8)}",
    rating: Faker::Number.between(from: 1, to: 5)
  )
  # Associate tasker with random services
  random_services = Service.all.sample(rand(1..3))
  tasker.services << random_services
end
puts "Taskers seeded!"
