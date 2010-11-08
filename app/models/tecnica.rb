class Tecnica < ActiveRecord::Base
  attr_accessible :oa_id
  belongs_to :oa
end
