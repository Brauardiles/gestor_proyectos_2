class CreateProyects < ActiveRecord::Migration[5.2]
  def change
    create_table :proyects do |t|
      t.string :name
      t.string :description
      t.date :initial_date
      t.date :final_date
      t.string :state

      t.timestamps
    end
  end
end
