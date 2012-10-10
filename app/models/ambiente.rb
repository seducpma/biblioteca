class Ambiente < ActiveRecord::Base
  belongs_to :user
  belongs_to :unidade

  def busca_turma(turma)
    Aluno.find_by_id_classe(turma).classe_descricao
  end

end
