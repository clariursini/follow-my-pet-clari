require "open-uri"

puts "Deleting appointments"
Appointment.destroy_all

puts "Deleting vaccinations"
Vaccination.destroy_all

puts "Deleting vaccines"
Vaccine.destroy_all

puts "Deleting studies"
Study.destroy_all

puts "Deleting clinical histories"
ClinicalHistory.destroy_all

puts "Deleting pets"
Pet.destroy_all

puts "Deleting species types"
SpeciesType.destroy_all

puts "Deleting users"
User.destroy_all

puts "Creating users"
user1 = User.create!(email: "clariursini@gmail.com", password: "123456", type_of_user: "Veterinary", name: "Clinic Veterinary Boris", doctors: "Boris, Sebastien and bro", phone: "+54659856523", location: "Paris", longitude: 2.3488, latitude: 48.85341)
user2 = User.create!(email: "valenursini@gmail.com", password: "123456", type_of_user: "Pet Owner", name: "Sofi", phone: "+5465944443", location: "Mendoza")
puts "Done"

puts "Creating species types"
species1 = SpeciesType.create!(name: "Dog")
species2 = SpeciesType.create!(name: "Cat")
puts "Done"

puts "Creating pets"
pet1 = Pet.create!(user: user2, name: "Aurelia", species_type: species1, birthday: Date.today)
pet2 = Pet.create!(user: user2, name: "Nelly", species_type: species2, birthday: Date.today)
puts "Done"

puts "Creating clinical histories"
clinicalhistory1 = ClinicalHistory.create!(user: user1, pet: pet1, description: "Vino a vacunarse. Pesa 5kg.", date: Date.today)
clinicalhistory2 = ClinicalHistory.create!(user: user1, pet: pet2, description: "Le duelen los oidos. Le mande a hacer una radiografia.", date: Date.today)
puts "Done"

puts "Creating appointments"
appointment1 = Appointment.create!(user: user1, pet: pet1, date: Date.today)
appointment2 = Appointment.create!(user: user1, pet: pet2, date: Date.today)
puts "Done"

puts "Creating vaccines"
vaccine1 = Vaccine.create!(name: "rabies")
vaccine2 = Vaccine.create!(name: "covid")
puts "Done"

puts "Creating vaccinations"
vaccination1 = Vaccination.create!(vaccine: vaccine1, clinical_history: clinicalhistory1, expiration_date: Date.today)
vaccination2 = Vaccination.create!(vaccine: vaccine2, clinical_history: clinicalhistory1, expiration_date: Date.today)
puts "Done"

puts "Creating studies"
study1 = Study.create!(clinical_history: clinicalhistory2, name: "Radiology")
study2 = Study.create!(clinical_history: clinicalhistory2, name: "Lab results")
puts "Done"
