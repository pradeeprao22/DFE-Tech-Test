class AddTripTypeToTrips < ActiveRecord::Migration[6.1]
  def change
    add_column :trips, :trip_type, :string
  end
end
