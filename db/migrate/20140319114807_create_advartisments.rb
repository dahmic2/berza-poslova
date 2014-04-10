class CreateAdvartisments < ActiveRecord::Migration
  def change
    create_table :advartisments do |t|
      t.string :title
      t.text :description
      t.date :published
      t.date :expire
      t.references :employer, index: true
      t.references :category, index: true
      t.string :location
      t.timestamps
    end
  end
end
