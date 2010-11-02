class User < ActiveRecord::Base
  attr_accessible :username, :email, :password, :password_confirmation, :role
  acts_as_authentic
  ROLES = %w[admin teacher student]
  #para autenticarse el usernme o email
  def self.find_by_anything(login)
    find_by_username(login) || find_by_email(login)
  end
end
