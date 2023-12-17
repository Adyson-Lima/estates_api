puts 'Gerando estates...'

5.times do |i|
  Estate.create(
    name: ["pará", "amapá", "amazonas"].sample ,
    capital: "capital específica"
    )
end

puts 'estates gerados com sucesso!'