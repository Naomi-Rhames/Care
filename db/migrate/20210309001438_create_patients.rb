class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :email
      t.string :name
      t.string :gender
      t.string :age
      t.string :password_digest
    end
  end
end
