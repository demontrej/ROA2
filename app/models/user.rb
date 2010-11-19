class User < ActiveRecord::Base
  attr_accessible :username, :email, :password, :password_confirmation, :role, :status, :sexo, :nombreapellido, :pais, :ciudad, :idioma, :fechanacimiento,:cargo, :skype, :foto
  acts_as_authentic
  ROLES = %w[admin teacher student]
  SEXO = %w[_ hombre mujer]
  ESTADO= %w[activo inactivo]
  #para autenticarse el usernme o email
  def self.find_by_anything(login)
    find_by_username(login) || find_by_email(login)
  end
  #subir un foto de usuario
  has_attached_file :foto, :styles => {
                      :thumb => ["50x50#", :png],
                      :small => "400x400>"}

end
