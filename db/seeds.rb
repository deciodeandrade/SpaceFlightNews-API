# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require './lib/write_in_database'

puts 'Iniciando o seed de Articles'

ActiveRecord::Base.transaction do 
    WriteInDatabase::write_articles
    puts 'Seed de Articles realizado com sucesso!'
end

