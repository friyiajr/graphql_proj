class Mutations::CompleteTodo < Mutations::BaseMutation
  argument :author_id, ID, required: true
  argument :todo_id, ID, required: true
  argument :completed, Boolean, required: true

  type Types::TodoType

  def resolve(author_id:, todo_id:, completed:)
    author = Author.find(author_id)
    todo = author.todos.find(todo_id)
    todo.update!(completed: completed)
    todo
  end
end
