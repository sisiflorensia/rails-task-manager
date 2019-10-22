class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # READ All
  def index
    @tasks = Task.all
  end

  # CREATE step 1
  def new
    @task = Task.new
  end

  # CREATE step 2
  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  # READ one
  def show
    # set_task
  end

  # UPDATE step 1
  def edit
    # set_task
  end

  # UPDATE step 2
  def update
    #set_task
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  # DELETE
  def destroy
    @task.destroy
    redirect_to tasks_path(@tasks)
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
