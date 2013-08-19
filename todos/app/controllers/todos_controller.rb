class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    Todo.create(params[:todo].permit(:name))
    redirect_to todos_path 
  end
end