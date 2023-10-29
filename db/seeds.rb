
# Seed services
common_services = [
    { name: "House Cleaning", description: "Professional house cleaning services.", picture: "" },
    { name: "Lawn Care", description: "Lawn mowing and maintenance.", picture: "" },
    { name: "Plumbing Repairs", description: "Fixing plumbing issues and leaks.", picture: "" },
    { name: "Pet Sitting", description: "Professional pet sitting and dog walking.", picture: "" },
    { name: "Electrical Repairs", description: "Electrical wiring and fixture repairs.", picture: "" },
    { name: "Interior Painting", description: "Interior painting and color consultation.", picture: "" },
    { name: "Furniture Assembly", description: "Assembly of furniture and IKEA items.", picture: "" },
    { name: "Gardening Services", description: "Landscaping and garden maintenance.", picture: "" },
    { name: "Computer Repair", description: "Computer and laptop troubleshooting and repair.", picture: "" },
    { name: "Tutoring Services", description: "Educational tutoring for various subjects.", picture: "" }
  ]
  
puts "Seeding services..."
common_services.each do |service|
    Service.create(service)
end
puts "Services seeded!"
  