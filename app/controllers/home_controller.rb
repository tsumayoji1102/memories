class HomeController < ApplicationController

  def top
    #エラー対策
    if session[:account_id]
      @user = UserInfo.find_by(account_id: session[:account_id])
    end
    session[:account_id] = nil
  end



end
