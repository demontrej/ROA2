class Oa < ActiveRecord::Base
  attr_accessible :titulo, :idioma, :descripcion, :palabras_clave, :ambito, :media
  #paperclip
  #validates_attachment_content_type :media, :content_type => [ 'application/msword', 'file/txt' ]
  has_attached_file :media,
    :styles => {
      :thumb=> "50x50#",
      :small=> "100x100>"
    }
  has_many :tecnicas
end
