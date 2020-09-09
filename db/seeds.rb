require 'csv'

i = 0

CSV.foreach(Rails.root.join('lib/players_20.csv'), headers: true) do |row|
  i += 1

  Player.create({
    playername: row[2],
    position: row[14],
    nationality: row[8],
    dob: row[5]
  })

  break if i > 4800
end
