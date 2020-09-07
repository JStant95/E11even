require 'csv'

CSV.foreach(Rails.root.join('lib/players_20.csv'), headers: true) do |row|

  Player.create({
    playername: row[2]
  })
end
