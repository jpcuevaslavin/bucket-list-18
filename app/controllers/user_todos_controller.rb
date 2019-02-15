class UserTodosController < ApplicationController

  def create
    user_todo = UserTodo.new(
      user_id: current_user.id,
      todo_id: params[:todo_id]
    )
    if user_todo.save
      redirect_to root_path, notice: 'Tarea completada con éxito!'
    else
      redirect_to root_path, alert: 'Ya completaste esa tarea!'
    end
  end

  def destroy
    # current_user.todos.find_by(todo_id: params[:todo_id]).destroy
    user_todo = UserTodo.find_by(
      user_id: current_user.id, 
      todo_id: params[:todo_id]
    )

    user_todo.destroy
    redirect_to root_path, notice: 'Tarea marcada como NO completada!'
  end
  

end
