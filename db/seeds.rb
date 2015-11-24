# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# db/seeds.rb
Event.destroy_all
events_attributes = [
  {
    publish:        "yes",
    title:          "Event one",
    subtitle:       "A great event at a fantastic location",
    body:           "Echo park cold-pressed cray hella tacos dreamcatcher. Helvetica post-ironic chartreuse kitsch, fap lumbersexual poutine VHS typewriter literally trust fund chambray lo-fi. Next level swag put a bird on it distillery gluten-free.",
    calendar_title: "our first event",
    calendar_body:  "Come to our first event... fun, fun!",
    day:            13,
    month:          05,
    year:           2016,
    start:          "11:00",
    end:            "12:00",
    address_one:    "Vanha koti",
    address_two:    "Köpingsvägen 13 G",
    postcode:       "02700",
    city:           "Grani"
  },
    {
    publish:        "no",
    title:          "Event twooish",
    subtitle:       "Not a bad event at all at a fantastically illogical location",
    body:           "Helvetica post-ironic chartreuse kitsch, fap lumbersexual poutine VHS typewriter literally trust fund chambray lo-fi. Next level swag put a bird on it distillery gluten-free.",
    calendar_title: "our second event",
    calendar_body:  "Worth a visit... if you are into that sorta thingy...",
    day:            20,
    month:          10,
    year:           2017,
    start:          "20:00",
    end:            "22:00",
    address_one:    "Uusi kotimme",
    address_two:    "Kauppalantie 13 G",
    postcode:       "02700",
    city:           "Kauniainen"
  },
    {
    publish:        "yes",
    title:          "Event Number three",
    subtitle:       "Come do the samba",
    body:           "Cold-pressed hartreuse kitsch, fap lumbersexual poutine VHS typewriter literally trust fund chambray lo-fi. Next level swag put a bird on it distillery gluten-free.",
    calendar_title: "A event to remeber.",
    calendar_body:  "Remeber to bring cheese, and just not any cheese... but the cheese?",
    day:            26,
    month:          03,
    year:           2017,
    start:          "21:00",
    end:            "23:00",
    address_one:    "Mummola",
    address_two:    "Rue de la Sapiniere",
    postcode:       "L-1234",
    city:           "Bridel"
  }
]
events_attributes.each { |params| Event.create!(params) }

