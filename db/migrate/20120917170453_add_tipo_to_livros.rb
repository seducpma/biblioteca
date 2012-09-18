class AddTipoToLivros < ActiveRecord::Migration
  def self.up
    add_column :livros, :tipo, :string
  end

  def self.down
    remove_column :livros, :tipo
  end
end
