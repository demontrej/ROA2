class AddTipodeingteractividadToOa < ActiveRecord::Migration
  def self.up
    add_column :oas, :Tipodeinteracctividad, :string
    add_column :oas, :Tipoderecurso, :string
    add_column :oas, :Nivelinteractividad, :string
    add_column :oas, :Densidadsemantica, :string
    add_column :oas, :Destinatario, :string
    add_column :oas, :Contexto, :string
    add_column :oas, :Rangotipicoedad, :string
    add_column :oas, :Dificultad, :string
    add_column :oas, :tiempodeaprendizaje, :string
  end

  def self.down
    remove_column :oas, :Tipodeinteracctividad
    remove_column :oas, :Tipodeinteracctividad
    remove_column :oas, :Tipoderecurso
    remove_column :oas, :Nivelinteractividad
    remove_column :oas, :Densidadsemantica
    remove_column :oas, :Destinatario
    remove_column :oas, :Contexto
    remove_column :oas, :Rangotipicoedad
    remove_column :oas, :Dificultad
    remove_column :oas, :tiempodeaprendizaje
  end
end

