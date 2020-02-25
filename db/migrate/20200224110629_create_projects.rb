class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table    :projects do |t|
      t.string      :name, null: false
      t.integer     :member
      t.string      :time
      t.string      :address
      t.text        :text
      t.references  :corporation, foreign_key: true
      t.timestamps
    end
  end
end
