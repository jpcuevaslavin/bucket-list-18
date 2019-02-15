class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: :index
  # before_action :set_todo_count

  # def set_todo_count
  #   @todo_count = Todo.count
  # end
end
