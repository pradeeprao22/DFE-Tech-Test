class CreateFaresTable < ActiveRecord::Migration[6.1]
  def change
    create_table :fares do |t|
      t.float :fare
      t.references :zone, foreign_key: true

      t.timestamps
    end
  end
end
