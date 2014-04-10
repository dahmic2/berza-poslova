class Advartisment < ActiveRecord::Base

  validates_presence_of :title, :description, :published, :expire,:category, :location, :on => :create

  belongs_to :employer, :class_name =>'Employer', :foreign_key => :employer_id
end
