class Libro < ActiveRecord::Base
  attr_accessible :titulo, :autor, :editorial, :edicion, :year, :front
  has_attached_file :front,
    :styles => {
      :thumb=> "70x70#",
      :small  => "150x150>" }
  validates_attachment_content_type :front, :content_type => ['image/jpeg', 'image/png', 'image/gif']
  has_many :paginas
end
