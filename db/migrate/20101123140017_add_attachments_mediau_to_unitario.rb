class AddAttachmentsMediauToUnitario < ActiveRecord::Migration
  def self.up
    add_column :unitarios, :mediau_file_name, :string
    add_column :unitarios, :mediau_content_type, :string
    add_column :unitarios, :mediau_file_size, :integer
    add_column :unitarios, :mediau_updated_at, :datetime
  end

  def self.down
    remove_column :unitarios, :mediau_file_name
    remove_column :unitarios, :mediau_content_type
    remove_column :unitarios, :mediau_file_size
    remove_column :unitarios, :mediau_updated_at
  end
end
