require 'faker'

exit unless Rails.env.development?

Address.delete_all
Person.delete_all
Event.delete_all
# Composite data adding at the bottom of script

Surname.delete_all
400.times { Surname.create!(data: Faker::Name.last_name) }

Name.delete_all
100.times { Name.create!(data: Faker::Name.first_name) }

Role.delete_all
%w(user supervisor manager superadmin admin).each { |role| Role.create!(data: role) }

Street.delete_all
200.times { Street.create!(data: Faker::Address.street_name) }

House.delete_all
400.times { House.create!(data: Faker::Address.building_number) }

City.delete_all
60.times { City.create!(data: Faker::Address.city) }

State.delete_all
20.times { State.create!(data: Faker::Address.state) }

EventType.delete_all
%w(birthday holiday).each { |type| EventType.create!(data: type) }

states_ids = State.all.pluck(:id)
cities_ids = City.all.pluck(:id)
houses_ids = House.all.pluck(:id)
streets_ids = Street.all.pluck(:id)
600.times do
  Address.create!({
    state_id: states_ids.sample,
    city_id: cities_ids.sample,
    house_id: houses_ids.sample,
    street_id: streets_ids.sample
  })
end

surnames_ids = Surname.all.pluck(:id)
names_ids = Name.all.pluck(:id)
600.times do 
  Person.create!({
    name_id: names_ids.sample,
    surname_id: surnames_ids.sample
  })
end

event_types_ids = EventType.all.pluck(:id)
100.times do
  Event.create!({
    event_type_id: event_types_ids.sample,
    title: Faker::Educator.course,
    datetime: Faker::Time.between(2.year.ago, Date.today, :day)
  })
end
