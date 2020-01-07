class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    if @task.save
    redirect_to task_path(@task.id), notice: "タスクを作成しました!"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    
    @task = Task.find(params[:id])
    if @task.update(task_params)
    redirect_to tasks_path, notice: "タスクを編集しました！"
  else
    render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_path, notice: "タスクを削除しました"
  end

  private

  def task_params
    params.require(:task).permit(:title, :content)
  end

  def set_task
  @task = Task.find(params[:id])
  end


end

