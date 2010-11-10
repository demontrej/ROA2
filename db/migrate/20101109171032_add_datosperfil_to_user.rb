class AddDatosperfilToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :nombreapellido, :string
    add_column :users, :pais, :string
    add_column :users, :ciudad, :string
    add_column :users, :idioma, :string
    add_column :users, :sexo, :string
    add_column :users, :fechanacimiento, :date
    add_column :users, :cargo, :string
    add_column :users, :skype, :string
  end

  def self.down
    remove_column :users, :nombreapellido
    remove_column :users, :nombreapellido
    remove_column :users, :pais
    remove_column :users, :ciudad
    remove_column :users, :idioma
    remove_column :users, :sexo
    remove_column :users, :fechanacimiento
    remove_column :users, :cargo
    remove_column :users, :skype
  end
end
