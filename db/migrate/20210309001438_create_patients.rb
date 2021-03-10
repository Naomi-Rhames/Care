class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :gender
      t.string :age
      t.integer :patient_id
    end
  end
end
