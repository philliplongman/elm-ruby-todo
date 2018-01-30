class CreateTask < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :body, null: false
      t.datetime :completed_at
      t.timestamps
    end
  end
end
