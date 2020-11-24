class CreateRides < ActiveRecord::Migration[6.0]
  def change
    create_table :rides do |t|
      t.integer :distance_km
      t.integer :minutes
      t.integer :user_id
      t.string :description
      t.date :date

      t.timestamps
    end
  end
end
