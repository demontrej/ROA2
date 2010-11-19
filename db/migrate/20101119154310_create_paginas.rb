class CreatePaginas < ActiveRecord::Migration
  def self.up
    create_table :paginas do |t|
      t.integer :libro_id
      t.string :nropagina
      t.timestamps
    end
  end

  def self.down
    drop_table :paginas
  end
end
