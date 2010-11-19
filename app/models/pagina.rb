class Pagina < ActiveRecord::Base
  attr_accessible :libro_id, :nropagina
  belongs_to :libro
end
