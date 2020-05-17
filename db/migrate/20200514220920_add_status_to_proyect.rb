class AddStatusToProyect < ActiveRecord::Migration[5.2]
  def change
    add_column :proyects, :status, :integer
  end
end
