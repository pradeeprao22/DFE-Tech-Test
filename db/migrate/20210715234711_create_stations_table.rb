class CreateStationsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :stations do |t|
      t.string :name
      t.references :zone, foreign_key: true
      t.references :trip, foreign_key: true

      t.timestamps
    end
  end
end
