class TasksController < ApplicationController
  # Index > New > Create > Show > Edit > Update > Destroy
  before_action :find_task, only: [:show, :edit, :update, :destroy]
  # The line on top means we don't have to call the method four times
  def index # all tasks
    @tasks = Task.all # save in instance variable to use in view
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def show;  end

  def edit;  end

  def update
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def find_task
    @task = Task.find(params[:id])
  end
end
