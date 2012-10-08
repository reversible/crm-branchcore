require 'digest/sha1'

class User < ActiveRecord::Base
  # attr_accessible :title, :body
  
has_many :contacts
has_many :accounts
has_many :opportunities

self.per_page = 10;
  
attr_accessor :password 
  
attr_accessible  :first_name, :last_name, :username, :password,:password_confirmation, :email, :email_confirmation, :is_admin

EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i  
  
validates :first_name,:presence=>true, :length => { :maximum => 40 }
validates :last_name,:presence=>true, :length => { :maximum => 40 }
validates :password,:presence=>true, :length => { :maximum => 25 }, :confirmation => true
validates :email,:presence=>true, :uniqueness => true, :format => EMAIL_REGEX, :confirmation => true,:length => { :maximum => 100 }  

 before_save :create_hashed_password
 after_save :clear_password


  def name
    "#{first_name} #{last_name}"
  end  
  
 attr_protected :hashed_password, :salt
  
  def name
    "#{first_name} #{last_name}"
  end
  
  def self.authenticate(username="", password="")
    user = User.find_by_username(username)
    if user && user.password_match?(password)
      return user
    else
      return false
    end
  end

  # The same password string with the same hash method and salt
  # should always generate the same hashed_password.
  def password_match?(password="")
    hashed_password == User.hash_with_salt(password, salt)
  end
  
  def self.make_salt(username="")
    Digest::SHA1.hexdigest("Use #{username} with #{Time.now} to make salt")
  end
  
  def self.hash_with_salt(password="", salt="")
    Digest::SHA1.hexdigest("Put #{salt} on the #{password}")
  end
  
  private
  
  def create_hashed_password
    # Whenever :password has a value hashing is needed
    unless password.blank?
      # always use "self" when assigning values
      self.salt = User.make_salt(username) if salt.blank?
      self.hashed_password = User.hash_with_salt(password, salt)
    end
  end

  def clear_password
    # for security and b/c hashing is not needed
    self.password = nil
  end  
  
  
  
end
