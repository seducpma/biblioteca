class CreateEmprestimos < ActiveRecord::Migration
  def self.up
    create_table :emprestimos do |t|
      t.integer :tipo_emprestimo
      t.integer :funcionario
      t.integer :aluno
      t.integer :nome
      t.references :unidade
      t.references :alunoclasse
      t.date :ano
      t.date :data_emprestimo
      t.date :data_devolucao
      
      t.boolean :status
      t.timestamps
    end
  end

  def self.down
    drop_table :emprestimos
  end
end
