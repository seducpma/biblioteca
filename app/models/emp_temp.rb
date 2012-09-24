class EmpTemp < ActiveRecord::Base
  belongs_to :dpu

  def localiza_existente(emprestimo)
    find()
  end
end
