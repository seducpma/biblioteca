class CreateAmbientes < ActiveRecord::Migration
  def self.up
    create_table :ambientes do |t|
      t.integer :user_id
      t.string :turma
      t.integer :ano_letivo
      t.date :data
      t.integer :unidade
      t.timestamps
    end

  end

  def self.down
    drop_table :ambientes
  end
end
