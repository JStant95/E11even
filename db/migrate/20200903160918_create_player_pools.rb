class CreatePlayerPools < ActiveRecord::Migration[6.0]
  def change
    create_table :player_pools do |t|
      t.references :pool, null: false, foreign_key: true
      t.references :player, null: false, foreign_key: true
      t.boolean :picked
      t.references :picked_by, references: :gamers, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
