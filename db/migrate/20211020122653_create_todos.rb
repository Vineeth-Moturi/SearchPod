class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :date
      t.string :item
      t.boolean :status

      t.timestamps
    end
  end
end
