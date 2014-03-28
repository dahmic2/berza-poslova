class Employer < ActiveRecord::Base
  before_save :encrypt_password

  validates_length_of :name, :in => 3..30

  validates_confirmation_of :password
  validates_presence_of :password, :name, :location, :username, :website, :email,  :on => :create
  validates_uniqueness_of :email
  validates_uniqueness_of :username
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX }
#ovo ne radi

  def self.authenticate(email, password)
    employer = find_by_email(email)
    if employer && employer.password == password
      employer
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

