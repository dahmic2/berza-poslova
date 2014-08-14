class Problem < ActiveRecord::Base
  has_many :comments
  validates_presence_of :title, :content


  def say
    "hello"
  end

  def self.search(search)
    if search
      find(:all, :conditions => ['content LIKE ? OR category LIKE ? OR username = ? OR page LIKE ?', "%#{search}%", search, search, search])
    else
      find(:all)
    end
  end
end
