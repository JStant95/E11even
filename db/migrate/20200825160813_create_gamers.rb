class CreateGamers < ActiveRecord::Migration[6.0]
  def change
    create_table :gamers do |t|
      t.references :user, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true
      t.string :invite_status

      t.timestamps
    end
  end
end
