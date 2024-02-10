class Mutations::CreateTodo < Mutations::BaseMutation
  argument :title, String, required: true
  argument :message, String, required: true
  argument :author_id, ID, required: true

  type Types::TodoType

  def resolve(title:, message:, author_id:)
    Author.find(author_id).todos.create!(
      title: title,
      message: message,
      completed: false
    )
  end
end
