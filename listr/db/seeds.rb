# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

lists = List.create(
  [
    {title: "Winco"},
    {title: "Safeway"},
    {title: "Chico Natural Foods"}
  ]
)

1.upto(8) do |i|
  items = Item.create(
      {name: "Item#{i}" , quantity: rand(1..6), lists_id: lists[0].id}
  )
end

1.upto(5) do |i|
  items = Item.create(
      {name: "Item#{i}" , quantity: rand(1..6), lists_id: lists[1].id}
  )
end

1.upto(10) do |i|
  items = Item.create(
      {name: "Item#{i}" , quantity: rand(1..6), lists_id: lists[2].id}
  )
end
