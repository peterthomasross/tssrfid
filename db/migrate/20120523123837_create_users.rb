class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :forename
      t.string :surname
      t.string :address
      t.string :postcode
      t.string :mobile
      t.string :email
      t.string :notes
      t.string :rfid

      t.timestamps
    end
  end
end
