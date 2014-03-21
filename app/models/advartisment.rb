class Advartisment < ActiveRecord::Base
  belongs_to :employer, :class_name =>'Employer', :foreign_key => :employer_id
  belongs_to :category, :class_name =>'Category', :foreign_key => :category_id
end
