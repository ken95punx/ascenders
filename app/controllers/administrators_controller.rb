class AdministratorsController < ApplicationController
  before_action :require_login
  before_action :set_administrator, only: [:edit, :update, :destroy]
  before_action :set_current_administrator, only: [:index, :new, :edit, :create, :update] #現在ログインしているユーザーをAdministorページに実装（順番気をつける。下記記述の上にする）
  before_action :authenticate_administrator, only: [:new, :create]  #新規登録は管理者のみアクセス可能

  def index
    @administrators = Administrator.all
    @admin = Administrator.find_by(email: 'creative.stonevillagehill@gmail.com') #管理者を定義
  end

#show削除（viewも削除）

  def new  #新規登録画面
    @administrator = Administrator.new
  end

  def edit  #アカウント編集画面
  end

  def create  #新規登録
    @administrator = Administrator.new(administrator_params)
    if @administrator.save
    redirect_to(:administrators, notice: 'アカウント作成しました')
    else
      render :new
    end
  end

  def update  #アカウント更新
    if @administrator.update(administrator_params)
      redirect_to(:administrators, notice: ' アカウント更新しました')
    else
      render :edit
    end
  end

  def destroy
    @administrator.destroy
    redirect_to(:administrators, notice: 'アカウントを削除しました')
  end

  private
    def set_administrator #ログインユーザー取得（パラメータから取得）
      @administrator = Administrator.find(params[:id])
    end

    def set_current_administrator #現在セッションしてるユーザーを定義
      @current_administrator = Administrator.find_by(id: session[:administrator_id])
    end

    def administrator_params #new、create登録時のストロングパラメータ
      params.require(:administrator).permit(
        :email,
        :password,
        :password_confirmation,
      )
    end

    def authenticate_administrator #セッションユーザーと管理者が相違していた場合の実装
      @administrator = Administrator.find_by(email: 'creative.stonevillagehill@gmail.com')
      if @current_administrator != @administrator 
        redirect_to(:administrators, notice: ' 管理者権限がありません')
      end
    end

    def not_authenticated
      redirect_to login_path, alert: "ログインしてください"
    end
end