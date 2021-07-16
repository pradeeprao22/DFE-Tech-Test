class CreateTripsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.string :from
      t.string :to
      t.timestamp :tapin
      t.timestamp :tapout
      t.float :fare
      
      t.timestamps
    end
  end
end
