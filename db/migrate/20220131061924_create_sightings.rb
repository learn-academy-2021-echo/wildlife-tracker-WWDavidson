class CreateSightings < ActiveRecord::Migration[6.1]
  def change
    create_table :sightings do |t|
      t.integer :animal_id
      t.datetime :date
      t.float :lat
      t.float :long

      t.timestamps
    end
  end
end
