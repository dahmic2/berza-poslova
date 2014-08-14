class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :username
      t.string :password
      t.string :email
      t.string :role
      t.integer :stars
      t.datetime :registered
      t.datetime :birthdate
      t.string :profile
      t.string :picture
      t.string :additional

      t.timestamps
    end
  end
end
