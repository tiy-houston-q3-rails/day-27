class TasksController < ApplicationController
  def index
    @tasks = Task.all.order("created_at DESC")
    @task = Task.new
  end

  def create
    @task = Task.new params.require(:task).permit(:title)
    @task.save
  end
end
