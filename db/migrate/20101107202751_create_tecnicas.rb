class CreateTecnicas < ActiveRecord::Migration
  def self.up
    create_table :tecnicas do |t|
      t.integer :oa_id
      t.timestamps
    end
  end

  def self.down
    drop_table :tecnicas
  end
end
