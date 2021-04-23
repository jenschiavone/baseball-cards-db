class AddTableLeagues < ActiveRecord::Migration[6.0]
  def up
    create_table :leagues, id: :uuid  do |t|
      t.string :name
      t.datetime :created_at, default: -> { 'CURRENT_TIMESTAMP' }
      t.datetime :updated_at, default: -> { 'CURRENT_TIMESTAMP' }
    end
  end

  def down
  end
end
