class User < ActiveRecord::Base


  validates :password, :presence => true
  validates_presence_of :password, :name, :surname, :username, :email, :on => :create
  validates_uniqueness_of :email
  validates_uniqueness_of :username
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX }
  # VALID_PHONE_REGEX = /\(?([0-9]{3})\)?([ .-]?)([0-9]{3})\2([0-9]{4})/
  # validates :phone, format: { with: VALID_PHONE_REGEX }



  mount_uploader :avatar, AvatarUploader

  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password == password
      user
    else
      nil
    end
  end

end
