class TasksController < ApplicationController
  # Index > New > Create > Show > Edit > Update > Destroy
  def index # all tasks
    @tasks = Task.all # save in instance variable to use in view
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
