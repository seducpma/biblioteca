class CreateUnidades < ActiveRecord::Migration
  def self.up
    create_table :unidades do |t|
      t.string     :nome
      t.references :unidades_gpd
      t.string     :endereco, :string
      t.integer    :num, :integer
      t.string     :complemento, :string
      t.string     :bairro, :string
      t.string     :cidade, :string
      t.string     :fone, :string
      t.string     :email, :string
      t.string     :diretor, :string
      t.string     :coordenador, :string
      t.string     :responsavel_bib, :string
      t.string     :obs, :text
      t.references :tipo




      t.timestamps
    end
  end

  def self.down
    drop_table :unidades
  end
end
