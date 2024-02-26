class UsersController < ApplicationController
  def index
    @users = User.all
    @schedule_total = User.all.count
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params.require(:user).permit(:user_id, :title, :startday, :finishday, :oneday, :memo)) 
    if @user.save
      flash[:notice] = "新規登録に成功しました"
      redirect_to :users
    else
      flash[:notice] = "新規登録に失敗しました"
      render "new"
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(params.require(:user).permit(:user_id, :title, :startday, :finishday, :oneday, :memo)) 
      flash[:notice] = "スケジュールを更新しました"
      redirect_to :users
    else
      flash[:notice] = "スケジュールの更新に失敗しました"
      render "edit"
    end
  end

  def destroy
    @user = User.find(params[:id])
     @user.destroy
     flash[:notice] = "ユーザーを削除しました"
     redirect_to :users
  end
  
end