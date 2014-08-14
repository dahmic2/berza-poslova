class AddPageToProblem < ActiveRecord::Migration
  def change
    add_column :problems, :page, :string
  end
end
