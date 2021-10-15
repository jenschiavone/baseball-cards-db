class AddTablePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players, id: :uuid  do |t|
      t.string :first_name
      t.string :last_name
      t.string :suffix
      t.datetime :created_at, default: -> { 'CURRENT_TIMESTAMP' }
      t.datetime :updated_at, default: -> { 'CURRENT_TIMESTAMP' }
    end
  end
end
