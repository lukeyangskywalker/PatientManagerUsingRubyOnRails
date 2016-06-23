class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :firstName
      t.string :middleName
      t.string :lastName
      t.float :weight
      t.float :Height
      t.string :MRN

      t.timestamps null: false
    end
  end
end
