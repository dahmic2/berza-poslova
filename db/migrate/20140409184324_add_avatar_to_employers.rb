class AddAvatarToEmployers < ActiveRecord::Migration
  def change
    add_column :employers, :avatar, :string
  end
end
