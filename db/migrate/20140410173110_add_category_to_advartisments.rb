class AddCategoryToAdvartisments < ActiveRecord::Migration
  def change
    add_column :advartisments, :category, :string
  end
end
