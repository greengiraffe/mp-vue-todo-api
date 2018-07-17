class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.text :text
      t.datetime :due
      t.boolean :important
      t.boolean :done
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
