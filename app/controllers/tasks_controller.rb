class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    task = Task.new(task_params)
    task.save
    redirect_to tasks_path, notice: "タスク「#{task.name}」を登録しました。"
  end

  def show
  end

  def new
    @task = Task.new
  end

  def edit
  end

  def task_params
    params.require(:task).permit(:name, :description)
  end

end
