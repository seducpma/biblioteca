class CreateAmbientes < ActiveRecord::Migration
  def self.up
    create_table :ambientes do |t|
      t.integer :turma_id
      t.integer :ano_letivo
      t.references :unidade
      t.date :data
      t.references :user
      t.timestamps
    end

  end

  def self.down
    drop_table :ambientes
  end
end
