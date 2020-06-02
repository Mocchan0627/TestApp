class TasksController < ApplicationController
  def index
  end

  def form
    @task = Task.new
  end

  def create
    @user = User.find_by(id: session[:user_id])
    @task = Task.new(
      context: params[:context],
      user_id: @current_user.id
    )
    if @task.save
      flash[:notice] = "タスクを登録しました"
      redirect_to("/users/#{@user.name}")
    else
      @error_message = ""
      render("tasks/form")
    end
  end

  def destroy
    @task = Task.find_by(id: params[:id].to_i)
    @task.destroy
    flash[:notice] = "お疲れ様でした！"
    redirect_to("/users/#{@current_user.name}")
  end
end
