class CreateTodoLists < ActiveRecord::Migration[6.1]
  def change
    create_table :todo_lists do |t|
      t.date :date
      t.text :item
      t.boolean :status
      t.integer :userid
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
