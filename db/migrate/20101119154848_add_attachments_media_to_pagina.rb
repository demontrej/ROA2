class AddAttachmentsMediaToPagina < ActiveRecord::Migration
  def self.up
    add_column :paginas, :media_file_name, :string
    add_column :paginas, :media_content_type, :string
    add_column :paginas, :media_file_size, :integer
    add_column :paginas, :media_updated_at, :datetime
  end

  def self.down
    remove_column :paginas, :media_file_name
    remove_column :paginas, :media_content_type
    remove_column :paginas, :media_file_size
    remove_column :paginas, :media_updated_at
  end
end
