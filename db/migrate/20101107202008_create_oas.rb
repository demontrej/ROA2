class CreateOas < ActiveRecord::Migration
  def self.up
    create_table :oas do |t|
      t.string :titulo
      t.string :idioma
      t.text :descripcion
      t.string :palabras_clave
      t.string :ambito
      t.timestamps
    end
  end

  def self.down
    drop_table :oas
  end
end
