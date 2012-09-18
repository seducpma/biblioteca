class Alunoclass < ActiveRecord::Base
  belongs_to :unidade
  belongs_to :emprestimo
end
