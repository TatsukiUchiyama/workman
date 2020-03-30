class AddTellNumberToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :Tell_number, :string
  end
end
