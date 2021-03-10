class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    puts "we are running a migration"
    create_table :doctors do |t|
      t.string :name
      t.integer :age
      t.integer :doctor_id
    end
  end
end
