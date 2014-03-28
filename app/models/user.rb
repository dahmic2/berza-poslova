class User < ActiveRecord::Base

  before_save :encrypt_password
  has_many :cvs


  validates_length_of :name, :in => 3..30
  validates_length_of :last_name, :in => 3..30
  validates_confirmation_of :password
  validates_presence_of :password, :name, :last_name, :phone, :adress,:email, :on => :create
  validates_uniqueness_of :email
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX }
  VALID_PHONE_REGEX = /\(?([0-9]{3})\)?([ .-]?)([0-9]{3})\2([0-9]{4})/
  validates :phone, format: { with: VALID_PHONE_REGEX }


  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password == password
      user
    else
      nil
    end
  end


  def encrypt_password
    if password.present?
      #self.password_salt = BCrypt::Engine.generate_salt
    #  self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
  def self.search(query)
    where("name LIKE ?", "%#{query}%")
  end
end
