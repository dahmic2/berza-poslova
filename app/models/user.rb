class User < ActiveRecord::Base
  before_save :encrypt_password

  validates_confirmation_of :password
  validates_presence_of :password, :name, :last_name, :phone, :adress, :on => :create
  validates_uniqueness_of :email
#hdsgjkasdhgfhjdagf

  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password == user.password
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
