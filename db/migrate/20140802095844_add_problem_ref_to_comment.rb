class AddProblemRefToComment < ActiveRecord::Migration
  def change
    add_reference :comments, :problem, index: true
  end
end
