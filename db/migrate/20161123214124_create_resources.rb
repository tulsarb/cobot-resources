class CreateResources < ActiveRecord::Migration[5.0]
  def change
    create_table :resources do |t|
      t.string :name, null: false
      t.text :description
      t.integer :capacity
      t.boolean :hidden
      t.integer :min_booking_duration
      t.integer :max_booking_duration
      t.string :integration_id, null: false
      t.json :integration_raw, null: false
      t.timestamps
    end
  end
end
