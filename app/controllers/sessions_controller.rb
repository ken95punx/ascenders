class SessionsController < ApplicationController
  before_action :require_login

  def new # ログイン画面
    @administrator = Administrator.new
  end

  def create #ログイン実装
    if @administrator = login(params[:email], params[:password])
      session[:administrator_id] = @administrator.id #ログインしたユーザーをセッションユーザーに定義
      redirect_back_or_to(:administrators, notice: 'ログインに成功しました')
    else
      flash.now[:alert] = 'ログインに失敗しました'
      render action: 'new'
    end
  end

  def destroy #ログアウト実装
    logout
    session[:administrator_id] = nil #ログアウトしたセッションユーザーを消去
    redirect_to(login_path, notice: 'ログアウトしました')
  end

  private

    def not_authenticated
      redirect_to login_path, alert: "ログインしてください"
    end
end