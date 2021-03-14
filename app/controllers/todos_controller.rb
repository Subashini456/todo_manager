class TodosController < ApplicationController
  def index
    @todos = Todo.of_user(current_user)
    #render plain: Todo.all.order(:due_date).map { |todo| todo.to_pleasent_string }.join("\n")
    render "index"
  end

  def show
    id = params[:id]
    todo = Todo.of_user(current_user).find(id)
    render plain: todo.to_pleasent_string
  end

  def create
    todo_text = params[:todo_text]
    due_date = DateTime.parse(params[:due_date])
    new_todo = Todo.create!(
      todo_text: todo_text,
      due_date: due_date,
      completed: false,
      user_id: current_user.id,
    )
    redirect_to todos_path
  end

  def update
    id = params[:id]
    completed = params[:completed]
    todo = Todo.of_user(current_user).find(id)
    todo.completed = completed
    todo.save!
    redirect_to todos_path
  end

  def destroy
    id = params[:id]
    dtodo = Todo.of_user(current_user).find(id)
    dtodo.destroy
    redirect_to todos_path
  end
end
