class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      flash[:success] = "Task created!"
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def task_params
    params.require(:task).permit(:name, :description, :difficulty_level, :priority_level)
  end
end

