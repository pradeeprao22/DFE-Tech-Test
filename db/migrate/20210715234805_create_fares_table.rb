class CreateFaresTable < ActiveRecord::Migration[6.1]
  def change
    create_table :fares do |t|
      t.float :fare
      t.integer :from_zone_id
      t.integer :to_zone_id
      #t.references :zone, foreign_key: true
      #zone from ---> zone to
      t.timestamps
    end
  end
end
