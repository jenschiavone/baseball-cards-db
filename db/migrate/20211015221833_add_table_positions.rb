class AddTablePositions < ActiveRecord::Migration[6.0]
  def change
    create_table :positions, id: :uuid  do |t|
      t.string :name
      t.string :abbreviation
      t.datetime :created_at, default: -> { 'CURRENT_TIMESTAMP' }
      t.datetime :updated_at, default: -> { 'CURRENT_TIMESTAMP' }
    end
  end
end
