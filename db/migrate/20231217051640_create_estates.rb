class CreateEstates < ActiveRecord::Migration[7.0]
  def change
    create_table :estates do |t|
      t.string :name
      t.string :capital

      t.timestamps
    end
  end
end
