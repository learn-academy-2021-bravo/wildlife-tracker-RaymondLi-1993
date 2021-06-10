class CreateTrackings < ActiveRecord::Migration[6.1]
  def change
    create_table :trackings do |t|
      t.date :date
      t.integer :longitude
      t.integer :latitude
      t.integer :animal_id

      t.timestamps
    end
  end
end
