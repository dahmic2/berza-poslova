class AddLocationToAdvartisments < ActiveRecord::Migration
  def change
    add_column :advartisments, :location, :string
  end
end
