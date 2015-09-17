class TodosController < ApplicationController
  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(permitted_params)

    if @todo.save
      redirect_to root_path, notice: "Successfully created Todo."
    else
      render "new"
    end
  end

  private

  def permitted_params
    params.require(:todo).permit(:description)
  end
end
