class AddAttachmentsMediaToOa < ActiveRecord::Migration
  def self.up
    add_column :oas, :media_file_name, :string
    add_column :oas, :media_content_type, :string
    add_column :oas, :media_file_size, :integer
    add_column :oas, :media_updated_at, :datetime
  end

  def self.down
    remove_column :oas, :media_file_name
    remove_column :oas, :media_content_type
    remove_column :oas, :media_file_size
    remove_column :oas, :media_updated_at
  end
end
