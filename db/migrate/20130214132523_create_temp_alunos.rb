class CreateTempAlunos < ActiveRecord::Migration
  def self.up
    create_table :temp_alunos do |t|
      t.string :nome
      t.integer :ra
      t.string :classe
      t.integer :ano_letivo

      t.timestamps
    end
  end

  def self.down
    drop_table :temp_alunos
  end
end
