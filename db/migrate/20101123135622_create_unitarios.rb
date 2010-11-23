class CreateUnitarios < ActiveRecord::Migration
  def self.up
    create_table :unitarios do |t|
      t.string :titulo
      t.timestamps
    end
  end

  def self.down
    drop_table :unitarios
  end
end
