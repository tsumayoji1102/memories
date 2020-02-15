class UserController < ApplicationController

  def login

  end

  def loginCheck
    #ユーザーを検索
    @user = UserInfo.find_by(email_address: params[:login_email])
    #userがいるなら
    if @user
      #パスワードの一致を判定
      if @user.password == params[:login_password]
        session[:account_id] = @user.account_id
        redirect_to("/index")
      else
        render("user/login")
        flash[:notice] = "パスワードが一致しません"
      end
    #userがいないなら
    else
      render("user/login")
      flash[:notice] = "そのユーザーは登録されていません"
    end
  end

  def signup
  end


  def register

    if params[:password] == params[:password_check] && params[:email_address] && params[:password] && params[:first_name] && params[:last_name] && params[:user_name] && params[:account_id] && params[:address_number] && params[:prefecture] && params[:city]
      @user = UserInfo.new(
        email_address:  params[:email_address],
        password:       params[:password],
        first_name:     params[:first_name],
        last_name:      params[:last_name],
        user_name:      params[:user_name],
        account_id:     params[:account_id],
        address_number: params[:address_number],
        prefecture:     params[:prefecture],
        city:           params[:city],
        building:       params[:building])
      @user.save
      redirect_to("/login")
      flash[:notice] = "アカウントを作成しました"
    else
      render("user/signup")
      flash[:notice] = "埋まっていない部分があります"
    end

  end

  def logout
    if session[:account_id]
      session[:account_id] = nil
      redirect_to("/login")
    end
  end


end
