class AddAuthorRefToTodo < ActiveRecord::Migration[7.1]
  def change
    add_reference :todos, :author, null: false, foreign_key: true
  end
end
