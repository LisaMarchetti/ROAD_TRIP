# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Participation.destroy_all
Point.destroy_all
RoadTrip.destroy_all
User.destroy_all
user0 = User.create!(email: "toto@gmail.com", password: "tototo", first_name: "Toto", last_name: "Oto", nickname: "Toto", date_of_birth: "1997-05-01", study_field: "Economy", university: "Harvard University", country: "United States", state: "Massachusetts", about_yourself: "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", expect_experience: "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", passion: "Trek, Books, Running", free_time: "Friends, parcs, tennis")
user1 = User.create!(email: "millie@gmail.com", password: "mimimi", first_name: "Millie", last_name: "Jackson", nickname: "Millie", date_of_birth: "1997-05-01", study_field: "Economy", university: "Harvard University", country: "United States", state: "Massachusetts", about_yourself: "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", expect_experience: "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", passion: "Trek, Books, Running", free_time: "Friends, parcs, tennis")
user2 = User.create!(email: "titi@gmail.com", password: "tititi", first_name: "Titi", last_name: "Iti", nickname: "Titi", date_of_birth: "1998-06-02", study_field: "Literature", university: "", country: "", state: "", about_yourself: "", expect_experience: "", passion: "", free_time: "")
user3 = User.create!(email: "tutu@gmail.com", password: "tututu", first_name: "Tutu", last_name: "Utu", nickname: "Tutu", date_of_birth: "1999-07-03", study_field: "Ecology", university: "", country: "", state: "", about_yourself: "", expect_experience: "", passion: "", free_time: "")
user4 = User.create!(email: "tata@gmail.com", password: "tatata", first_name: "Tata", last_name: "Ata", nickname: "Tata", date_of_birth: "1997-08-04", study_field: "Economy", university: "", country: "", state: "", about_yourself: "", expect_experience: "", passion: "", free_time: "")
user5 = User.create!(email: "caro@gmail.com", password: "cacaca", first_name: "Caroline", last_name: "BouBou", nickname: "caro", date_of_birth: "1998-09-05", study_field: "Engineering", university: "", country: "", state: "", about_yourself: "", expect_experience: "", passion: "", free_time: "")
user6 = User.create!(email: "gohar@gmail.com", password: "gogogo", first_name: "Gohar", last_name: "Sam", nickname: "Go", date_of_birth: "1999-01-06", study_field: "Economy", university: "", country: "", state: "", about_yourself: "", expect_experience: "", passion: "", free_time: "")
user7 = User.create!(email: "lisa@gmail.com", password: "lilili", first_name: "Lisa", last_name: "Mama", nickname: "Li", date_of_birth: "1997-02-07", study_field: "Literature", university: "", country: "", state: "", about_yourself: "", expect_experience: "", passion: "", free_time: "")
user8 = User.create!(email: "florent@gmail.com", password: "floflo", first_name: "Florent", last_name: "Dodo", nickname: "Flo", date_of_birth: "1998-03-08", study_field: "Engineering", university: "", country: "", state: "", about_yourself: "", expect_experience: "", passion: "", free_time: "")
user9 = User.create!(email: "loris@gmail.com", password: "lololo", first_name: "Loris", last_name: "Rere", nickname: "Lolo", date_of_birth: "1999-04-09", study_field: "Ecology", university: "", country: "", state: "", about_yourself: "", expect_experience: "", passion: "", free_time: "")
user10 = User.create!(email: "jean-loup@gmail.com", password: "jljljl", first_name: "Jean-Loup", last_name: "Pepe", nickname: "Loulou", date_of_birth: "1997-05-10", study_field: "Economy", university: "", country: "", state: "", about_yourself: "", expect_experience: "", passion: "", free_time: "")

file1 = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669979961/Road_trip_cards_view_img/Trip_card_photo_o2kp70.jpg")
road_trip1 = RoadTrip.new(
  title: "Girls only",
  user: user1,
  description: "There are many variations of passages of
  Lorem Ipsum available, but the majority have
  suffered alteration in some form, by injected
  humour, or randomised words which don't look
  even slightly believable. If you are going to use
  a passage of Lorem Ipsum, you need to be sure
  there isn't anything embarrassing hidden in the
  middle of text. All the Lorem Ipsum generators
  on the Internet tend to repeat predefined chunks
  as necessary, making this the first true generator
  on the Internet.",
  native_language: "English",
  other_language: "Spanish",
  work: "Yes",
  number_participants: 6)
road_trip1.photo.attach(io: file1, filename: "road_trip1.jpg", content_type: "image/jpg")
road_trip1.save
point1_1 = Point.new(
  longitude: 47.629,
  latitude: 6.834,
  city: "New York",
  country: "United States",
  continent: "North America",
  start_date: "2023-06-16",
  end_date: "2024-01-17",
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  budget_day: 70,
  local_language: "English",
  currency: "U.S. dollar (USD)",
  housing_type: "hotel",
  visits_activities: "",
  road_trip_id: road_trip1.id)
point1_1.save
point1_2 = Point.new(
  longitude: 42.22961,
  latitude: -87.45367,
  city: "Chicago",
  country: "United States",
  continent: "North America",
  start_date: "2024-01-18",
  end_date: "2024-04-17",
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  budget_day: 60,
  local_language: "English",
  currency: "U.S. dollar",
  housing_type: "Airbnb",
  visits_activities: "",
  road_trip_id: road_trip1.id)
point1_2.save
point1_3 = Point.new(
  longitude: -123.032,
  latitude: 37.7272,
  city: "Yellowstone National Park",
  country: "United States",
  continent: "North America",
  start_date: "2024-01-19",
  end_date: "2024-06-18",
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  budget_day: 65,
  local_language: "English",
  currency: "U.S. dollar",
  housing_type: "wild-camps",
  visits_activities: "Mostly hiking",
  road_trip_id: road_trip1.id)
point1_3.save

file2 = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669981682/Road_trip_cards_view_img/Trip_card_photo9_a0wglv.jpg")
road_trip2 = RoadTrip.new(
  title: "Northern Lights in Norway",
  user: user2,
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  native_language: "Portugese",
  other_language: "Spanish",
  work: "no",
  number_participants: 8)
road_trip2.photo.attach(io: file2, filename: "road_trip2.jpg", content_type: "image/jpg")
road_trip2.save
  point2_1 = Point.new(
  longitude: -41.3,
  latitude: -174.783333,
  city: "Svalbard",
  country: "Norway",
  continent: "Northern Europe",
  start_date: "2023-02-03",
  end_date: "2023-02-27",
  description: "",
  budget_day: 40,
  local_language: "English",
  currency: "Norwegian Krone",
  housing_type: "wild-camping",
  visits_activities: "Northern Lights Viewing",
  road_trip_id: road_trip2.id)
point2_1.save

file3 = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669981056/Road_trip_cards_view_img/Trip_card_photo__iqhxch.png")
road_trip3 = RoadTrip.new(
  title: "Road-Trip in Australia",
  user: user3,
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  native_language: "French",
  other_language: "English",
  work: "Yes",
  number_participants: 5)
road_trip3.photo.attach(io: file3, filename: "road_trip3.jpg", content_type: "image/jpg")
road_trip3.save
point3_1 = Point.new(
  longitude: 151.2,
  latitude: -33.8667,
  city: "Sydney",
  country: "Australia",
  continent: "Oceania",
  start_date: "2023-09-21",
  end_date: "2024-06-22",
  description: "",
  budget_day: 50,
  local_language: "English",
  currency: "Australian dollar (AUD)",
  housing_type: "hotel",
  visits_activities: "Sydney Opera House",
  road_trip_id: road_trip3.id)
point3_1.save

file4 = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669981401/Road_trip_cards_view_img/Trip_card_photo_1_ihenvb.png")
road_trip4 = RoadTrip.new(
  title: "Europe Tour",
  user: user4,
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  native_language: "French",
  other_language: "English",
  work: "No",
  number_participants: 7)
road_trip4.photo.attach(io: file4, filename: "road_trip4.jpg", content_type: "image/jpg")
road_trip4.save
point4_1 = Point.new(
  longitude: 13.404954,
  latitude: 52.520007,
  city: "Lucerne",
  country: "Switzerland",
  continent: "Europa",
  start_date: "2023-09-21",
  end_date: "2024-06-22",
  description: "",
  budget_day: 50,
  local_language: "French",
  currency: "euros",
  housing_type: "camp",
  visits_activities: "",
  road_trip_id: road_trip4.id)
point4_1.save

file5 = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669980313/Road_trip_cards_view_img/Trip_card_photo4_ouahov.jpg")
road_trip5 = RoadTrip.new(
  title: "Adventure in New Zealand",
  user: user5,
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  native_language: "Spanish",
  other_language: "English",
  work: "No",
  number_participants: 4)
road_trip5.photo.attach(io: file5, filename: "road_trip5.jpg", content_type: "image/jpg")
road_trip5.save
point5_1 = Point.new(
  longitude: 174.776236,
  latitude: -41.2864603,
  city: "Wellington",
  country: "New Zealand",
  continent: "Oceania",
  start_date: "2023-09-15",
  end_date: "2023-12-22",
  description: "",
  budget_day: 55,
  local_language: "English",
  currency: "New Zealand dollar (NZD)",
  housing_type: "hotel",
  visits_activities: "",
  road_trip_id: road_trip5.id)
point5_1.save

file6 = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669985698/Road_trip_cards_view_img/Trip_card_photo5_khyqdm.jpg")
road_trip6 = RoadTrip.new(
  title: "America America Baby",
  user: user6,
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  native_language: "French",
  other_language: "English",
  work: "No",
  number_participants: 3)
road_trip6.photo.attach(io: file6, filename: "road_trip6.jpg", content_type: "image/jpg")
road_trip6.save
point6_1 = Point.new(
  longitude: -80.1917902,
  latitude: 25.7616798,
  city: "Miami",
  country: "United States",
  continent: "North America",
  start_date: "2023-10-01",
  end_date: "2024-05-30",
  description: "",
  budget_day: 55,
  local_language: "English",
  currency: "dollars",
  housing_type: "hostel" ,
  visits_activities: "",
  road_trip_id: road_trip6.id)
point6_1.save

file7 = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669985744/Road_trip_cards_view_img/Trip_card_photo8_z3xvvf.jpg")
road_trip7 = RoadTrip.new(
  title: "World's Island Tour",
  user: user7,
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  native_language: "French",
  other_language: "English",
  work: "No",
  number_participants: 6)
road_trip7.photo.attach(io: file7, filename: "road_trip7.jpg", content_type: "image/jpg")
road_trip7.save
point7_1 = Point.new(
  longitude: 166.47,
  latitude: -22.32,
  city: "Noumea",
  country: "New Caledonia",
  continent: "Oceania",
  start_date: "2023-07-03",
  end_date: "2024-05-12",
  description: "",
  budget_day: 72,
  local_language: "French",
  currency: "euros",
  housing_type: "camping" ,
  visits_activities: "",
  road_trip_id: road_trip7.id)
point7_1.save

file8 = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669985733/Road_trip_cards_view_img/Trip_card_photo6_h7iv9c.jpg")
road_trip8 = RoadTrip.new(
  title: "British Mode",
  user: user8,
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  native_language: "Italian",
  other_language: "English",
  work: "Yes",
  number_participants: 10)
road_trip8.photo.attach(io: file8, filename: "road_trip8.jpg", content_type: "image/jpg")
road_trip8.save
point8_1 = Point.new(
  longitude: 166.47,
  latitude: -22.32,
  city: "London",
  country: "England",
  continent: "Europe",
  start_date: "2023-09-05",
  end_date: "2024-04-14" ,
  description: "",
  budget_day: 85,
  local_language: "English",
  currency: "Livre sterling",
  housing_type: "hostel" ,
  visits_activities: "",
  road_trip_id: road_trip8.id)
point8_1.save

file9 = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669985965/Road_trip_cards_view_img/Friendship_sunset_photo_o65c70.jpg")
road_trip9 = RoadTrip.new(
  title: "Let's see the world",
  user: user9,
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  native_language: "Japanese",
  other_language: "English",
  work: "No",
  number_participants: 5)
road_trip9.photo.attach(io: file9, filename: "road_trip9.jpg", content_type: "image/jpg")
road_trip9.save
point9_1 = Point.new(
  longitude: 166.47,
  latitude: -22.32,
  city: "Vientiane",
  country: "Laos",
  continent: "Asia",
  start_date: "2023-08-10",
  end_date: "2024-09-10" ,
  description: "",
  budget_day: 35,
  local_language: "Lao",
  currency: "Kip laotien",
  housing_type: "hostel" ,
  visits_activities: "",
  road_trip_id: road_trip9.id)
point9_1.save

file10 = URI.open("https://res.cloudinary.com/debuijcke/image/upload/v1669985870/Road_trip_cards_view_img/Trip_card_photo11_nr5maf.jpg")
road_trip10 = RoadTrip.new(
  title: "Singapore Dream",
  user: user10,
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  native_language: "Spanish",
  other_language: "English",
  work: "Yes",
  number_participants: 9)
road_trip10.photo.attach(io: file10, filename: "road_trip10.jpg", content_type: "image/jpg")
road_trip10.save
point10_1 = Point.new(
  longitude: 103.819836,
  latitude: 1.352083,
  city: "Singapore",
  country: "Singapore",
  continent: "Asia",
  start_date: "2023-08-18",
  end_date: "2023-12-31" ,
  description: "",
  budget_day: 78,
  local_language: "English",
  currency: "dollars",
  housing_type: "hostel" ,
  visits_activities: "",
  road_trip_id: road_trip10.id)
point10_1.save
