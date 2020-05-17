class RemoveStateFromProyect < ActiveRecord::Migration[5.2]
  def change
    remove_column :proyects, :state, :string
  end
end
