class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(permitted_params)

    if @todo.save
      redirect_to todos_path, notice: "Successfully created Todo."
    else
      render "new"
    end
  end

  def update
    @todo = Todo.find(params[:id])

    @todo.update_attributes(permitted_params)
    redirect_to todos_path, notice: "Successfully completed Todo."
  end

  private

  def permitted_params
    params.require(:todo).permit(:description, :completed_at)
  end
end
