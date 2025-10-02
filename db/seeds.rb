# db/seeds.rb

# Clear existing records (optional, useful for dev)
House.destroy_all
User.destroy_all

# Create Users
admin = User.create!(
  name: "Admin User",
  email: "admin@example.com",
  password: "password",
  role: "admin"
)

user = User.create!(
  name: "Regular User",
  email: "user@example.com",
  password: "password",
  role: "user"
)

# Create Houses for admin
admin.houses.create!([
  {
    location: "Tamuning",
    size: 2000,
    rooms: 4,
    is_active: true
  },
  {
    location: "Tumon",
    size: 1500,
    rooms: 3,
    is_active: false
  }
])

# Create Houses for regular user
user.houses.create!([
  {
    location: "Dededo",
    size: 1200,
    rooms: 2,
    is_active: true
  },
  {
    location: "Mangilao",
    size: 1800,
    rooms: 3,
    is_active: true
  }
])

puts "✅ Seeded #{User.count} users and #{House.count} houses."
