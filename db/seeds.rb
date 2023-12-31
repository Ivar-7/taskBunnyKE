
# Seed services
common_services = [
    { name: "Cleaning", description: "Professional house cleaning services.", picture: "https://plus.unsplash.com/premium_photo-1677683508374-a6f50382eb66?auto=format&fit=crop&q=80&w=400&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" },
    { name: "Lawn Care", description: "Lawn mowing and maintenance.", picture: "" },
    { name: "Plumbing Repairs", description: "Fixing plumbing issues and leaks.", picture: "" },
    { name: "Pet Sitting", description: "Professional pet sitting and dog walking.", picture: "" },
    { name: "Tutoring Services", description: "Educational tutoring for various subjects.", picture: "" }
    { name: "Electrical Repairs", description: "Electrical wiring and fixture repairs.", picture: "" },
    { name: "Interior Painting", description: "Interior painting and color consultation.", picture: "" },
    { name: "Furniture Assembly", description: "Assembly of furniture and IKEA items.", picture: "" },
    { name: "Gardening Services", description: "Landscaping and garden maintenance.", picture: "" },
    { name: "Computer Repair", description: "Computer and laptop troubleshooting and repair.", picture: "" },
  ]
  
puts "Seeding services..."
common_services.each do |service|
    Service.create(service)
end
puts "Services seeded!"
  