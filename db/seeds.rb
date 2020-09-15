require 'csv'

Filter.destroy_all
Product.destroy_all

puts "Generating filters..."
filters = [
  "Filtros",
  "Circuitos",
  "Montajes",
  "Mascarillas",
  "Bolsas de respiración",
  "Resucitadores",
  "Conectores",
  "Vias respiratorias",
  "Canulas",
  "Tubos",
  "Atomizadores & Nebulizadores",
  "Humidificadores" 
]

filters.each do |filter|
  Filter.create!(name: "#{filter}")
end

puts "Generating products..."

filepath = 'data_libresante_ES.csv'
csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }

CSV.foreach(filepath, csv_options) do |row|
  if row[0] = "Atomizadores & Nebulizadores"
    Product.create!(name: row[2], description: row[3], category: row[1], filter_id: Filter.find_by(name: "Atomizadores & Nebulizadores").id)
  elsif row[0] = "Bolsas de respiración"
    Product.create!(name: row[2], description: row[3], category: row[1], filter_id: Filter.find_by(name: "Bolsas de respiración").id)
  elsif row[0] = "Canulas"
    Product.create!(name: row[2], description: row[3], category: row[1], filter_id: Filter.find_by(name: "Canulas").id)
  elsif row[0] = "Circuitos"
    Product.create!(name: row[2], description: row[3], category: row[1], filter_id: Filter.find_by(name: "Circuitos").id)
  elsif row[0] = "Conectores"
    Product.create!(name: row[2], description: row[3], category: row[1], filter_id: Filter.find_by(name: "Conectores").id)
  elsif row[0] = "Filtros"
    Product.create!(name: row[2], description: row[3], category: row[1], filter_id: Filter.find_by(name: "Filtros").id)
  elsif row[0] = "Humidificadores"
    Product.create!(name: row[2], description: row[3], category: row[1], filter_id: Filter.find_by(name: "Humidificadores").id)
  elsif row[0] = "Mascarillas"
    Product.create!(name: row[2], description: row[3], category: row[1], filter_id: Filter.find_by(name: "Mascarillas").id)
  elsif row[0] = "Montajes"
    Product.create!(name: row[2], description: row[3], category: row[1], filter_id: Filter.find_by(name: "Montajes").id)
  elsif row[0] = "Resucitadores"
    Product.create!(name: row[2], description: row[3], category: row[1], filter_id: Filter.find_by(name: "Resucitadores").id)
  elsif row[0] = "Tubos"
    Product.create!(name: row[2], description: row[3], category: row[1], filter_id: Filter.find_by(name: "Tubos").id)
  elsif row[0] = "Vias respiratorias"
    Product.create!(name: row[2], description: row[3], category: row[1], filter_id: Filter.find_by(name: "Vias respiratorias").id)
  end
end

puts "Seed finished!"