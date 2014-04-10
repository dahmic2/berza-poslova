class Advartisment < ActiveRecord::Base

  validates_presence_of :title, :description, :published, :expire, :on => :create

  belongs_to :employer, :class_name =>'Employer', :foreign_key => :employer_id
  belongs_to :category, :class_name =>'Category', :foreign_key => :category_id
end
