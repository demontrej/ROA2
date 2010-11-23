class Pagina < ActiveRecord::Base
  attr_accessible :libro_id, :nropagina, :media
  belongs_to :libro
  has_attached_file :media,
    :styles => { :thumb=> "50x50>"}
  validates_attachment_content_type :media, :content_type => ['image/jpeg', 'image/png', 'image/gif']
end
