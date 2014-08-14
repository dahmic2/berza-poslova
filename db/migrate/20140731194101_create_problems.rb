class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string :title
      t.string :content
      t.integer :user
      t.string :category
      t.string :status
      t.datetime :posted
      t.string :additional

      t.timestamps
    end
  end
end
