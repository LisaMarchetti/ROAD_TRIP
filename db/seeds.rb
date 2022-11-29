# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.create!(email: "toto@gmail.com", password: "tototo", name: "Toto")
user2 = User.create!(email: "titi@gmail.com", password: "tititi", name: "Titi")
user3 = User.create!(email: "tutu@gmail.com", password: "tututu", name: "Tutu")
user4 = User.create!(email: "tata@gmail.com", password: "tatata", name: "Tata")
user5 = User.create!(email: "caro@gmail.com", password: "cacaca", name: "Caroline")
user6 = User.create!(email: "gohar@gmail.com", password: "gogogo", name: "Gohar")
user7 = User.create!(email: "lisa@gmail.com", password: "lilili", name: "Lisa")
user8 = User.create!(email: "florent@gmail.com", password: "floflo", name: "Florent")
user9 = User.create!(email: "loris@gmail.com", password: "lololo", name: "Loris")
user10 = User.create!(email: "jean-loup@gmail.com", password: "jljljl", name: "Jean-Loup")

file1 = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669200839/Rockets/Fus%C3%A9e6_ndhomg.png")
road_trip1 = Road_trip.new(
  title: "America Girls only",
  user: user1,
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  native_language: "English",
  other_language: "Spanish",
  work: "No",
  number_participants: 6,
  longitude: 47.629,
  latitude: 6.834,
  city: "New York",
  country: "United States",
  continent: "North America",
  start_date: 16/06/2023,
  end_date: 17/06/2024 ,
  description: ,
  budget_day: 60,
  local_language: "English",
  currency: "dollars",
  housing_type: "hostel" ,
  visits_activities:)
road_trip1.photo.attach(io: file1, filename: "road_trip1.png", content_type: "image/png")
road_trip1.save

file2 = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669200861/Rockets/Fus%C3%A9e8_whpgb1.png")
road_trip2 = Road_trip.new(
  title: "Aventure in South America",
  user: user2,
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  native_language: "Portuguese",
  other_language: "Spanish",
  work: "Yes",
  number_participants: 8,
  longitude: -43.18,
  latitude: -22.97,
  city: "Rio",
  country: "Brazil",
  continent: "South America",
  start_date: 20/08/2023,
  end_date: 18/07/2024 ,
  description: ,
  budget_day: 40,
  local_language: "Portuguese",
  currency: "real",
  housing_type: "hostel",
  visits_activities:)
road_trip2.photo.attach(io: file2, filename: "road_trip2.png", content_type: "image/png")
road_trip2.save

file3 = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669200826/Rockets/Fus%C3%A9e5_icrod8.png")
road_trip3 = Road_trip.new(
  title: "Road-Trip in Australia",
  user: user3,
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  native_language: "French",
  other_language: "English",
  work: "Yes",
  number_participants: 5,
  longitude: 151.2,
  latitude: -33.8667,
  city: "Sydney",
  country: "Australia",
  continent: "Australia",
  start_date: 21/09/2023,
  end_date: 22/06/2024 ,
  description: ,
  budget_day: 50,
  local_language: "English",
  currency: "dollars",
  housing_type: "hostel",
  visits_activities:)
road_trip3.photo.attach(io: file3, filename: "road_trip3.png", content_type: "image/png")
road_trip3.save

file4 = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669200850/Rockets/Fus%C3%A9e7_atobct.png")
road_trip4 = Road_trip.new(
  title: "Europe Tour",
  user: user4,
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  native_language: "French",
  other_language: "English",
  work: "No",
  number_participants: 7,
  longitude: 13.404954,
  latitude: 52.520007,
  city: "Sydney",
  country: "Australia",
  continent: "Oceania",
  start_date: 21/09/2023,
  end_date: 22/06/2024 ,
  description: ,
  budget_day: 50,
  local_language: "English",
  currency: "euros",
  housing_type: "hostel" ,
  visits_activities:)
road_trip4.photo.attach(io: file4, filename: "road_trip4.png", content_type: "image/png")
road_trip4.save

file5 = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669200780/Rockets/Fus%C3%A9e1_pqaaf9.png")
road_trip5 = Road_trip.new(
title: "Travel in New Zealand",
user: user5,
description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
native_language: "Spanish",
other_language: "English",
work: "No",
number_participants: 4,
longitude: 174.776236,
latitude: -41.2864603,
city: "Wellington",
country: "New Zealand",
continent: "Oceania",
start_date: 21/09/2023,
end_date: 22/06/2024 ,
description: ,
budget_day: 55,
local_language: "English",
currency: "dollars",
housing_type: "hostel" ,
visits_activities:)
road_trip5.photo.attach(io: file5, filename: "road_trip5.png", content_type: "image/png")
road_trip5.save

file6 = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669200804/Rockets/Fus%C3%A9e3_c18bvi.png")
road_trip6 = Road_trip.new(
  title: "America America Baby",
  user: user6,
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  native_language: "French",
  other_language: "English",
  work: "No",
  number_participants: 3,
  longitude: -80.1917902,
  latitude: 25.7616798,
  city: "Miami",
  country: "United States",
  continent: "North America",
  start_date: 01/10/2023,
  end_date: 30/05/2024 ,
  description: ,
  budget_day: 55,
  local_language: "English",
  currency: "dollars",
  housing_type: "hostel" ,
  visits_activities:)
road_trip6.photo.attach(io: file6, filename: "road_trip6.png", content_type: "image/png")
road_trip6.save

file7 = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669200814/Rockets/Fus%C3%A9e4_pkwhns.png")
road_trip7 = Road_trip.new(
  title: "World's Island Tour",
  user: user7,
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  native_language: "French",
  other_language: "English",
  work: "No",
  number_participants: 6,
  longitude: 166.47,
  latitude: -22.32,
  city: "Noumea",
  country: "New Caledonia",
  continent: "Oceania",
  start_date: 03/07/2023,
  end_date: 12/05/2024 ,
  description: ,
  budget_day: 72,
  local_language: "French",
  currency: "euros",
  housing_type: "camping" ,
  visits_activities:)
road_trip7.photo.attach(io: file7, filename: "road_trip7.png", content_type: "image/png")
road_trip7.save

file8 = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669289196/Rockets/Fus%C3%A9e10_q9gxbe.jpg")
road_trip8 = Road_trip.new(
  title: "British Mode",
  user: user8,
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  native_language: "Italian",
  other_language: "English",
  work: "Yes",
  number_participants: 10,
  longitude: 166.47,
  latitude: -22.32,
  city: "London",
  country: "England",
  continent: "Europe",
  start_date: 05/09/2023,
  end_date: 14/04/2024 ,
  description: ,
  budget_day: 85,
  local_language: "English",
  currency: "Livre sterling",
  housing_type: "hostel" ,
  visits_activities:)
road_trip8.photo.attach(io: file8, filename: "road_trip8.png", content_type: "image/png")
road_trip8.save

file9 = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669289196/Rockets/Fus%C3%A9e10_q9gxbe.jpg")
road_trip9 = Road_trip.new(
  title: "Let's see the world",
  user: user9,
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  native_language: "Japan",
  other_language: "English",
  work: "No",
  number_participants: 5,
  longitude: 166.47,
  latitude: -22.32,
  city: "Vientiane",
  country: "Laos",
  continent: "Asia",
  start_date: 10/08/2023,
  end_date: 10/09/2024 ,
  description: ,
  budget_day: 35,
  local_language: "Lao",
  currency: "Kip laotien",
  housing_type: "hostel" ,
  visits_activities:)
road_trip9.photo.attach(io: file9, filename: "road_trip9.png", content_type: "image/png")
road_trip9.save

file10 = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669289196/Rockets/Fus%C3%A9e10_q9gxbe.jpg")
road_trip10 = Road_trip.new(
  title: "Singapore Dream",
  user: user10,
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  native_language: "Spanish",
  other_language: "English",
  work: "Yes",
  number_participants: 9,
  longitude: 103.819836,
  latitude: 1.352083,
  city: "Singapore",
  country: "Singapore",
  continent: "Asia",
  start_date: 18/08/2023,
  end_date: 31/12/2023 ,
  description: ,
  budget_day: 78,
  local_language: "English",
  currency: "dollars",
  housing_type: "hostel" ,
  visits_activities:)
road_trip10.photo.attach(io: file10, filename: "road_trip10.png", content_type: "image/png")
road_trip10.save
