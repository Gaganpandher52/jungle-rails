class User < ActiveRecord::Base
  
  has_secure_password
  validates :password, length: { minimum: 5 }
  validates :email, presence:true, uniqueness: { case_sensitive: false }

end
