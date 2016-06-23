class CreateEncounters < ActiveRecord::Migration
  def change
    create_table :encounters do |t|
      t.string :visitNumber
      t.date :admittedAt
      t.date :dischargedAt
      t.string :location
      t.string :room
      t.string :bed
      t.references :patientId, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
