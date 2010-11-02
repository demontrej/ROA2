class UserSession < Authlogic::Session::Base
  #para autenticarse con el username o email
  find_by_login_method :find_by_anything
end