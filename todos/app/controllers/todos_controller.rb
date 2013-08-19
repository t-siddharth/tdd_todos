class TodosController < ApplicationController
  def index
    @todos = current_user.todos #Todo.where(owner_email: current_email)
  end

  def new
    @todo = Todo.new
  end

  def create
    current_user.todos.create params[:todo].permit(:name)
    # Todo.user (params[:todo].merge(owner_email: current_email).permit(:name, :owner_email))
    # Todo.create (params[:todo].merge(owner_email: current_email).permit(:name, :owner_email))
    redirect_to todos_path
  end

  # private
  # def todo_params
  #   Todo.create(params[:todo].permit(:name))
  # end

end
