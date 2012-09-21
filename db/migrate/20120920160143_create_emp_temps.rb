class CreateEmpTemps < ActiveRecord::Migration
  def self.up
    create_table :emp_temps do |t|
      t.references :dpu
      t.references :user
      t.timestamps
    end
  end

  def self.down
    drop_table :emp_temps
  end
end
