class Notification < ActiveRecord::Base
  belongs_to :user,  :class_name =>'User', :foreign_key => :user_ide
  belongs_to :category,  :class_name =>'Category', :foreign_key => :category_id
end
