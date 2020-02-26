class CreateProjectMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :project_messages do |t|
      t.string      :message,         null: false
      t.references  :user,    foreign_key: true
      t.references  :project, foreign_key: true

      t.timestamps
    end
  end
end
