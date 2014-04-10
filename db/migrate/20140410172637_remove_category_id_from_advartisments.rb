class RemoveCategoryIdFromAdvartisments < ActiveRecord::Migration
  def change
    remove_column :advartisments, :category_id, :integer
  end
end
