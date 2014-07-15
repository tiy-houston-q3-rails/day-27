class TasksController < ApplicationController
  def index
    @tasks = Task.all.order("created_at DESC")
    @task = Task.new
  end

  def create
    @task = Task.new params.require(:task).permit(:title)
    @task.save
  end

  def complete
    @task = Task.find(params[:id])
    @task.done = true
    @task.save
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
  end
end
