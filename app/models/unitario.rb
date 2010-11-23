class Unitario < ActiveRecord::Base
  attr_accessible :titulo, :mediau
  has_attached_file :mediau,
    :styles => {:thumb=> "50x50>"}
end
