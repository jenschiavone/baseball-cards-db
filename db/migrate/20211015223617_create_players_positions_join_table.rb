class CreatePlayersPositionsJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_table :players_positions, id: false  do |t|
      t.belongs_to :player
      t.belongs_to :position
    end
  end
end
