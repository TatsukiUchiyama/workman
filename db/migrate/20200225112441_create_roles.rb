class CreateRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :roles do |t|
      t.integer  :number
      t.string   :role

      t.timestamps
    end
  end
end
