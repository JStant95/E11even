class ChangeColumnNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :player_pools, :picked_by_id, true
  end
end
