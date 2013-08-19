class TodosController < ApplicationController
  def index
    @todos = Todo.where(owner_email: current_email)
  end

  def new
    @todo = Todo.new
  end

  def create
    Todo.create (params[:todo].merge(owner_email: current_email).permit(:name, :owner_email))
    redirect_to todos_path
  end

  # private
  # def todo_params
  #   Todo.create(params[:todo].permit(:name))
  # end

end
