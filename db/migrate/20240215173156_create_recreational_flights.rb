class CreateRecreationalFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :recreational_flights do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.text :occasion
      t.date :preferred_date
      t.string :preferred_availability
      t.date :alternate_date
      t.string :alternate_availability
      t.text :comments

      t.timestamps
    end
  end
end
