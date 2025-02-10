# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

# cities = City.create!(Array.new(20) { |i| { name: "City #{i+1}" } })

# categories = Category.create!(Array.new(20) { |i| { name: "Category #{i+1}" } })

# conventions = Convention.create!(Array.new(20) { |i| { name: "Convention #{i+1}" } })

# correspondings = Corresponding.create!(Array.new(20) { |i| { name: "Corresponding #{i+1}" } })

# report_templates = ReportTemplate.create!(Array.new(20) { |i| { title: "Template #{i+1}", content: "Content #{i+1}" } })

# establishments = Establishment.create!(Array.new(20) { |i| { name: "Establishment #{i+1}", default_lang: "EN", invoice_number_pattern: "INV#{i+1}", receipt_number_pattern: "REC#{i+1}", support_email: "support#{i+1}@example.com", city: cities.sample, report_template: report_templates.sample } })

# patients = Patient.create!(Array.new(20) { |i| { first_name: "Patient", last_name: "#{i+1}", birthday: "2000-01-01", age: 24, gender: ["Male", "Female"].sample, city: cities.sample } })

# nurses = Nurse.create!(Array.new(20) { |i| { first_name: "Nurse", last_name: "#{i+1}" } })

# reanimators = Reanimator.create!(Array.new(20) { |i| { first_name: "Reanimator", last_name: "#{i+1}" } })

# radiologists = User.create!(Array.new(20) { |i| { first_name: "Radiologist", last_name: "#{i+1}", username: "radio#{i+1}", password: "password", role_id: nil } })

# technical_users = User.create!(Array.new(20) { |i| { first_name: "Technician", last_name: "#{i+1}", username: "tech#{i+1}", password: "password", role_id: nil } })

# services = Service.create!(Array.new(20) { |i| { name: "Service #{i+1}", establishment: establishments.sample } })

# examinations = Examination.create!(Array.new(20) { |i| { patientWeight: rand(50..100), note: "Examination note #{i+1}", patient: patients.sample, service: services.sample, nurse: nurses.sample, reanimator: reanimators.sample, corresponding: correspondings.sample, convention: conventions.sample, prescriber_id: nil, technical: technical_users.sample, radiologist: radiologists.sample } })

# modalities = Modality.create!(Array.new(20) { |i| { code: "M#{i+1}" } })

# rooms = Room.create!(Array.new(20) { |i| { name: "Room #{i+1}", description: "Room Description", ip: "192.168.#{i+1}.1", application_entity_title: "AE#{i+1}", service: services.sample, modality: modalities.sample } })

# pathology_categories = PathologyCategory.create!(Array.new(20) { |i| { name: "Pathology Category #{i+1}" } })

# pathology_zones = PathologyZone.create!(Array.new(20) { |i| { name: "Pathology Zone #{i+1}" } })

# pathologies = Pathology.create!(Array.new(20) { |i| { name: "Pathology #{i+1}", description: "Description #{i+1}", pathology_zone: pathology_zones.sample, pathology_category: pathology_categories.sample } })

# reports = Report.create!(Array.new(20) { |i| { status: "Pending", content: "Report Content #{i+1}", examination: examinations.sample } })

# tests = Test.create!(Array.new(20) { |i| { date: "2025-01-01", status: "Completed", underAnesthesia: [true, false].sample, examination: examinations.sample } })

require 'faker'

Region.destroy_all
Setting.destroy_all
Operation.destroy_all
Resource.destroy_all
Report.destroy_all
Examination.destroy_all
Pathology.destroy_all
PathologyZone.destroy_all
PathologyCategory.destroy_all
Prescriber.destroy_all
Speciality.destroy_all
Structure.destroy_all
Reanimator.destroy_all
Nurse.destroy_all
Patient.destroy_all
Establishment.destroy_all
ReportTemplate.destroy_all
Room.destroy_all
Service.destroy_all
Convention.destroy_all
Category.destroy_all
City.destroy_all
User.destroy_all
Role.destroy_all

Organ.destroy_all
ModalityOption.destroy_all
Modality.destroy_all
Corresponding.destroy_all


roles = 5.times.map { Role.create!(role_key: Faker::Lorem.word, name: Faker::Job.title) }
users = 20.times.map {  User.create!(title: Faker::Lorem.word, username: Faker::Name.first_name, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, password: Faker::Internet.password(min_length: 8), phone_number: Faker::PhoneNumber.cell_phone) }
cities = 20.times.map { City.create!(name: Faker::Address.city) }
categories = 20.times.map { Category.create!(name: Faker::Commerce.department) }
correspondings = 20.times.map { Corresponding.create!(name: Faker::Name.name) }
conventions = 20.times.map { Convention.create!(name: Faker::Company.name) }

services = 20.times.map { Service.create!(name: Faker::Company.industry) }

rooms = 20.times.map { Room.create!(name: Faker::Company.name, description: Faker::Lorem.sentence, ip: Faker::Internet.ip_v4_address, application_entity_title: Faker::Lorem.word,
service: services.sample, modality: Modality.create!(code: Faker::Alphanumeric.alpha(number: 3).upcase)) }

report_templates = 20.times.map { ReportTemplate.create!(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.paragraph, room: rooms.sample) }

establishments = 20.times.map { Establishment.create!(name: Faker::Company.name, default_lang: "en", invoice_number_pattern: "INV-###", receipt_number_pattern: "REC-###",
support_email: Faker::Internet.email, city: cities.sample, report_template: report_templates.sample) }



patients = 20.times.map { Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, birthday: Faker::Date.birthday(min_age: 1, max_age: 90),
age: rand(1..90), gender: ["Male", "Female"].sample, city: cities.sample) }

nurses = 20.times.map { Nurse.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name) }
reanimators = 20.times.map { Reanimator.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name) }

structures = 20.times.map { Structure.create!(name: Faker::Company.name) }
specialities = 20.times.map { Speciality.create!(name: Faker::Job.field) }
prescribers = 20.times.map { Prescriber.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, title: ["Dr.", "Prof."].sample,email: Faker::Internet.email,
address: Faker::Address.full_address, phone_number: Faker::PhoneNumber.phone_number, structure: structures.sample, speciality: specialities.sample) }
pathology_zones = 20.times.map { PathologyZone.create!(name: Faker::Lorem.word) }
pathology_categories = 20.times.map { PathologyCategory.create!(name: Faker::Commerce.department) }
pathologies = 20.times.map { Pathology.create!(name: Faker::Lorem.word, description: Faker::Lorem.sentence, pathology_zone: pathology_zones.sample, pathology_category: pathology_categories.sample) }

examinations = 20.times.map { Examination.create!(patient_weight: rand(50.0..100.0), note: Faker::Lorem.sentence, patient: patients.sample, service: services.sample, nurse: nurses.sample,
reanimator: reanimators.sample, corresponding: correspondings.sample, convention: conventions.sample, prescriber: prescribers.sample, technical: users.sample, radiologist: users.sample) }

reports = 20.times.map { Report.create!(status: ["Pending", "Completed"].sample, content: Faker::Lorem.paragraph, examination: examinations.sample) }
resources = 20.times.map { Resource.create!(name: Faker::Lorem.word) }
operations = 20.times.map { Operation.create!(name: Faker::Company.buzzword, operation_type: ["Surgical", "Imaging"].sample, resource: resources.sample) }

regions = 20.times.map { Region.create!(name: Faker::Address.state, code: Faker::Address.state_abbr, direction: Faker::Lorem.word) }

prescribers.each { |p| p.update!(structure: structures.sample, speciality: specialities.sample, service: services.sample) }

puts "Seeding completed!"

